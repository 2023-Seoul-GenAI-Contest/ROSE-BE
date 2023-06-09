package io.rose.central.vo;

import lombok.Data;

@Data
public class ChatRequestVO {

  private Integer sessionId;
  private Integer msgNum;
  private Integer msgType;
  private String text;
  private Integer clientId;
}
