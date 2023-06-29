package io.rose.central.vo;

import lombok.Data;

@Data
public class KeywordVO {

  private Integer id;
  private String keyword;
  private String explain;
  private String ImgLink;
  private Integer timestamp; //second
}
