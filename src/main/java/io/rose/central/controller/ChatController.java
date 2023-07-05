package io.rose.central.controller;

import io.rose.central.dao.ChatDAO;
import io.rose.central.service.ChatService;
import io.rose.central.service.SttService;
import io.rose.central.vo.ChatHistVO;
import io.rose.central.vo.ChatRequestVO;
import io.rose.central.vo.ChatResponseVO;
import io.rose.central.vo.ChatVO;
import lombok.extern.slf4j.Slf4j;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Slf4j
@Controller
public class ChatController {

  @Autowired
  private SttService sttService;

  @Autowired
  private ChatService chatService;

  @PostMapping("/chat/voice")
  public ResponseEntity<String> sendChatVoice(
      HttpServletRequest request,
      HttpServletResponse response,
      @RequestParam("file") MultipartFile multipartFile) {
    return ResponseEntity.ok(sttService.convertVoiceToText(multipartFile));
  }

  @PostMapping("/chat/text")
  public ResponseEntity<ChatResponseVO> sendChatText(
      HttpServletRequest request,
      HttpServletResponse response,
      @RequestBody ChatRequestVO chatRequestVO) {
    if (chatRequestVO.getSessionId() == null) {
      chatRequestVO.setSessionId(
          chatService.createSessionId(chatRequestVO.getClientId()));
      log.info("SessionId: " + chatRequestVO.getSessionId());
    }
    ChatResponseVO aiRes = chatService.getAiChat(chatRequestVO);
    ChatVO chatVO = new ChatVO();
    chatVO.setRequestVO(chatRequestVO);
    chatVO.setResponseVO(aiRes);
    if (chatService.saveChatHist(chatVO)) {
      return ResponseEntity.ok(aiRes);
    } else {
      return ResponseEntity.badRequest().body(null);
    }
  }

  @GetMapping("/chat/{id}")
  public ResponseEntity<List<ChatDAO>> getChatDetail(
      HttpServletRequest request,
      HttpServletResponse response,
      @PathVariable Integer sessionId,
      @RequestParam("clientId") Integer clientId) {
    return ResponseEntity.ok(chatService.getChatDetail(clientId, sessionId));
  }

  @GetMapping("/chat/hist")
  public ResponseEntity<List<ChatHistVO>> getChatHistory(
      HttpServletRequest request,
      HttpServletResponse response,
      @RequestParam("clientId") Integer clientId) {
    return ResponseEntity.ok(chatService.getChatHistory(clientId));
  }
}
