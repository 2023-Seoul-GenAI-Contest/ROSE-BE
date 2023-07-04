package io.rose.central.vo;

import lombok.Data;

@Data
public class ChatResponseVO {

  private Integer sessionId;
  private Integer clientId;
  private Integer msgNum;
  private Integer msgType;
  private String text;
  private String status;
  private String imgUrl;
  private String lectureUrl;
}
