package io.rose.central.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ChatController {

  @PostMapping("/chat/voice")
  public void sendChatVoice() {
    //STT
    //return Text 단순히 음성을 텍스트로 변환
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
