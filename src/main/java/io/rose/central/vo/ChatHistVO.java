package io.rose.central.vo;

import lombok.Data;

@Data
public class ChatHistVO {

  private Integer sessionId;
  private String text;
  private String lectureUrl;
}
