package io.rose.central.vo;

import lombok.Data;

@Data
public class ChatRequestVO {
    private String msgNum;
    private String msgType;
    private String text;
    private String clientId;
}
