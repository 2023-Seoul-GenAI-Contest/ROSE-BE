package io.rose.central.vo;

import java.util.List;
import lombok.Data;

@Data
public class LectureVO {

  private Integer id;
  private String title;
  private String describe;
  private String link;
  private String thumbnailLink;
  private Integer videoLink;
  private List<KeywordVO> keywordList;
  private List<QuizVO> quizList;
  private String summery;
  private Integer totalTime; //second
}
