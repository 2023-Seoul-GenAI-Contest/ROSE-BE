package io.rose.central.service;

import io.rose.central.config.rest.RestService;
import io.rose.central.dao.ChatDAO;
import io.rose.central.mapper.ChatMapper;
import io.rose.central.vo.ChatHistVO;
import io.rose.central.vo.ChatRequestVO;
import io.rose.central.vo.ChatResponseVO;
import io.rose.central.vo.ChatVO;
import io.rose.central.vo.SessionVO;
import lombok.extern.slf4j.Slf4j;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class ChatService {

    @Value("${genai.base}")
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
                ChatResponseVO.class);
        log.info("AI Chat Response: " + res.getBody().toString());
        return res.getBody();
    }

    public Boolean saveChatHist(ChatVO chatVO) {
        Integer res = chatMapper.saveChatHist(chatVO);
        if (res > 0)
            return true;
        else
            return false;
    }

    public Integer createSessionId(Integer clientId) {
        SessionVO sessionVO = new SessionVO();
        sessionVO.setClientId(clientId);
        int res = chatMapper.createSessionId(sessionVO);
        if (res > 0)
            return sessionVO.getSession();
        else
            return null;
    }

    public List<ChatDAO> getChatDetail(Integer clientId, Integer sessionId) {
        return chatMapper.getChatDetail(clientId, sessionId);
    }

    public List<ChatHistVO> getChatHistory(Integer clientId) {
        return chatMapper.getChatHistory(clientId);
    }
}
