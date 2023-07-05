package io.rose.central.service;

import io.rose.central.config.rest.RestService;
import io.rose.central.dao.ChatDAO;
import io.rose.central.mapper.ChatMapper;
import io.rose.central.vo.ChatHistVO;
import io.rose.central.vo.ChatRequestVO;
import io.rose.central.vo.ChatResponseVO;
import io.rose.central.vo.ChatVO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class ChatService {

  @Value("${genai.base-url}")
  private String genaiBaseUrl;

  @Autowired
  private RestService restService;

  @Autowired
  private ChatMapper chatMapper;

  public ChatResponseVO getAiChat(ChatRequestVO chatRequestVO) {
    ResponseEntity<ChatResponseVO> res = restService.post(
      genaiBaseUrl + "chat",
      null,
      null,
      chatRequestVO,
      null,
      null,
      ChatResponseVO.class
    );
    return res.getBody();
  }

  public Boolean saveChatHist(ChatVO chatVO) {
    Integer res = chatMapper.saveChatHist(chatVO);
    if (res > 0) return true; else return false;
  }

  public Integer createSessionId(Integer clientId) {
    return chatMapper.createSessionId(clientId);
  }

  public List<ChatDAO> getChatDetail(Integer clientId, Integer sessionId) {
    return chatMapper.getChatDetail(clientId, sessionId);
  }

  public List<ChatHistVO> getChatHistory(Integer clientId) {
    return chatMapper.getChatHistory(clientId);
  }
}
