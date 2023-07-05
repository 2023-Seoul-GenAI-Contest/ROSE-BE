package io.rose.central.vo;

import java.util.List;
import lombok.Data;

@Data
public class QuizVO {

  private String lectureCode;
  private String questionNum;
  private String question;
  private List<String> example;
  private String answer;
  private String explain;
}
