package io.rose.central.controller;

import io.rose.central.service.SttService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ChatController {

  @Autowired
  private SttService sttService;

  @PostMapping("/chat/voice")
  public ResponseEntity<String> sendChatVoice(
    HttpServletRequest request,
    HttpServletResponse response,
    @RequestParam("file") MultipartFile multipartFile
  ) {
    return ResponseEntity.ok(sttService.convertVoiceToText(multipartFile));
  }

  @PostMapping("/chat/text")
  public void sendChatText() {
    //Save Chat Hist
    //return
  }

  @GetMapping("/chat/{id}")
  public void getChatDetail() {}

  @GetMapping("/chat/hist")
  public void getChatHistory() {}
}
