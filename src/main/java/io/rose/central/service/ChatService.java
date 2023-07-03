package io.rose.central.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import io.rose.central.config.rest.RestService;
import io.rose.central.mapper.ChatMapper;
import io.rose.central.vo.ChatRequestVO;
import io.rose.central.vo.ChatResponseVO;

@Service
public class ChatService {
    @Value("${genai.base-url}")
    private String genaiBaseUrl;

    @Autowired
    private RestService restService;

    @Autowired
    private ChatMapper chatMapper;

    public ChatResponseVO getAiChat(ChatRequestVO chatRequestVO) {
        ResponseEntity<ChatResponseVO> res = restService.post(genaiBaseUrl + "chat", null, null, chatRequestVO, null,
                null, ChatResponseVO.class);
        return res.getBody();
    }

    public void saveChatHist() {
    }
}
