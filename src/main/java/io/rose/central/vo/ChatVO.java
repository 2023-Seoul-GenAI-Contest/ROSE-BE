package io.rose.central.vo;

import lombok.Data;

@Data
public class ChatVO {

  private String id;
  private String question;
  private String answer;
  private LectureVO recommendLecture;
}
