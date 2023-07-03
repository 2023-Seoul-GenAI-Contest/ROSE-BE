package io.rose.central.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class SttService {

  @Value("${naver.stt-url}")
  private String baseUrl;

  @Value("${naver.client-id}")
  private String clientId;

  @Value("${naver.client-secret}")
  private String clientSecret;

  public String convertVoiceToText(MultipartFile file) {
    try {
      String language = "Kor"; // 언어 코드 ( Kor, Jpn, Eng, Chn )
      String apiURL =
        "https://naveropenapi.apigw.ntruss.com/recog/v1/stt?lang=" + language;
      URL url = new URL(apiURL);

      HttpURLConnection conn = (HttpURLConnection) url.openConnection();
      conn.setUseCaches(false);
      conn.setDoOutput(true);
      conn.setDoInput(true);
      conn.setRequestProperty("Content-Type", "application/octet-stream");
      conn.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
      conn.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);

      OutputStream outputStream = conn.getOutputStream();

      byte[] buffer = new byte[4096];
      int bytesRead = -1;
      while ((bytesRead = file.getInputStream().read(buffer)) != -1) {
        outputStream.write(buffer, 0, bytesRead);
      }
      outputStream.flush();
      file.getInputStream().close();
      BufferedReader br = null;
      int responseCode = conn.getResponseCode();
      if (responseCode == 200) { // 정상 호출
        br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
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
      return response.toString();
    } catch (Exception e) {
      System.out.println(e);
      return null;
    }
  }
}
