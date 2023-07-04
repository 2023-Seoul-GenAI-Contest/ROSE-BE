package io.rose.central.dao;

import lombok.Data;

@Data
public class ChatDAO {

  private Integer session;
  private Integer userId;
  private Integer msgType;
  private String msgNum;
  private String msg;
  private Boolean status;
  private String imgUrl;
  private String lectureUrl;
}
