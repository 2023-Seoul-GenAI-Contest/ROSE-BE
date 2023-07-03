package io.rose.central.vo;

import lombok.Data;

@Data
public class ChatResponseVO {
    private String msgNum;
    private String msgType;
    private String text;
    private String clientId;
    private String status;
    private String imgUrl;
    private String lectureUrl;
}
