package io.rose.central.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;

import io.rose.central.vo.SttVO;

@Service
public class SttService {

  @Value("${naver.stt-url}")
  private String baseUrl;

  @Value("${naver.client-id}")
  private String clientId;

  @Value("${naver.client-secret}")
  private String clientSecret;

  public String convertVoiceToText(MultipartFile mfile) {
    try {

      String language = "Kor"; // 언어 코드 ( Kor, Jpn, Eng, Chn )
      String apiURL = "https://naveropenapi.apigw.ntruss.com/recog/v1/stt?lang=" + language;
      URL url = new URL(apiURL);
      File file = convert(mfile); // 전송할 오디오 파일의 경로
      HttpURLConnection conn = (HttpURLConnection) url.openConnection();
      conn.setUseCaches(false);
      conn.setDoOutput(true);
      conn.setDoInput(true);
      conn.setRequestProperty("Content-Type", "application/octet-stream");
      conn.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
      conn.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
      FileInputStream inputStream = new FileInputStream(file);
      OutputStream outputStream = conn.getOutputStream();
      byte[] buffer = new byte[2000000];
      int bytesRead = -1;
      while ((bytesRead = inputStream.read(buffer)) != -1) {
        outputStream.write(buffer, 0, bytesRead);
      }
      outputStream.flush();
      inputStream.close();
      BufferedReader br = null;
      int responseCode = conn.getResponseCode();
      System.out.println("responseCode=" + responseCode);
      if (responseCode == 200) { // 정상 호출
        br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
      } else { // 오류 발생
        System.out.println("error!!!!!!! responseCode= " + responseCode);
        br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
      }
      String inputLine;
      StringBuffer response = new StringBuffer();
      if (br != null) {
        while ((inputLine = br.readLine()) != null) {
          response.append(inputLine);
        }
        br.close();
      }
      ObjectMapper mapper = new ObjectMapper();
      SttVO res = mapper.readValue(response.toString(), SttVO.class);
      System.out.println(res.getText());

      return res.getText();
    } catch (Exception e) {
      System.out.println(e);
      return null;
    }
  }

  private File convert(MultipartFile file) throws Exception {
    File convertFile = new File(file.getOriginalFilename());
    convertFile.createNewFile();
    FileOutputStream fos = new FileOutputStream(convertFile);
    fos.write(file.getBytes());
    fos.close();
    return convertFile;
  }
}
