package io.rose.central.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class LectureController {

  @GetMapping("/lecture/{userId}")
  public void getUserLectureList(
    HttpServletRequest request,
    HttpServletResponse response,
    @PathVariable Integer userId
  ) {
    // return default lecture list
  }

  @GetMapping("/lecture/{lectureId}/summery")
  public void getSummery(
    HttpServletRequest request,
    HttpServletResponse response,
    @PathVariable Integer lectureId
  ) {
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
