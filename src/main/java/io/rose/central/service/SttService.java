package io.rose.central.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import io.rose.central.config.rest.RestService;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class SttService {

  @Value("${naver.stt-url}")
  private String baseUrl;

  @Value("${naver.client-id}")
  private String clientId;

  @Value("${naver.client-secret}")
  private String clientSecret;

  @Autowired
  private RestService restService;

  private File file;

  public void getProcessorInfo()
    throws JsonMappingException, JsonProcessingException {
    file = new File("src/main/resources/explain_kakao.mp3");
    List<String> path = new ArrayList<String>();
    Map<String, Object> params = new HashMap<String, Object>();
    params.put("lang", "Kor");
    Map<String, String> headers = new HashMap<String, String>();
    headers.put("Content-Type", "application/octet-stream");
    headers.put("X-NCP-APIGW-API-KEY-ID", clientId);
    headers.put("X-NCP-APIGW-API-KEY", clientSecret);

    ResponseEntity<String> result = restService.post(
      baseUrl,
      path,
      headers,
      file,
      params,
      null,
      String.class
    );
    System.out.println(result);
  }
}
