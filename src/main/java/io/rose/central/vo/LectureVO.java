package io.rose.central.vo;

import lombok.Data;

@Data
public class LectureVO {

  private Integer id;
  private String title;
  private String describe;
  private String thumbnailLink;
  private String videoLink;
  private Integer totalTime; // hour
}
