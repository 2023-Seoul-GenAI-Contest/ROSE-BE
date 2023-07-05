package io.rose.central.controller;

import io.rose.central.service.LectureService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class LectureController {

  @Autowired
  private LectureService lectureService;

  @GetMapping("/lecture/{userId}")
  public void getUserLectureList(
    HttpServletRequest request,
    HttpServletResponse response,
    @PathVariable Integer userId
  ) {
    lectureService.getLectureList(userId);
  }

  @GetMapping("/lecture/{lectureId}/summary")
  public void getSummery(
    HttpServletRequest request,
    HttpServletResponse response,
    @PathVariable Integer lectureId
  ) {
    lectureService.getAiSummary(lectureId);
    // return lecture list
  }

  @GetMapping("/lecture/{lectureId}/keyword")
  public void getKeyword(
    HttpServletRequest request,
    HttpServletResponse response,
    @PathVariable Integer lectureId
  ) {
    // return lecture list
  }

  @GetMapping("/lecture/{lectureId}/quiz")
  public void getQuiz(
    HttpServletRequest request,
    HttpServletResponse response,
    @PathVariable Integer lectureId
  ) {
    // return quiz (qustion, answer, explain) list
  }
}
