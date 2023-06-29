package io.rose.central.vo;

import lombok.Data;

@Data
public class QuizVO {

  private Integer id;
  private String question;
  private String answer;
  private String explain;
}
