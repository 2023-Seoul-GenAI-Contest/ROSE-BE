package io.rose.central.vo;

import lombok.Data;

@Data
public class UserRetriveVO {

  private Integer id;
  private String name;
  private String email;
  private String password;
  private String phone;
  private String level;
}
