package io.rose.central.controller;

import io.rose.central.service.LectureService;
import io.rose.central.vo.KeywordResponseVO;
import io.rose.central.vo.LectureDetailVO;
import io.rose.central.vo.LectureVO;
import io.rose.central.vo.QuizVO;
import io.rose.central.vo.SummaryResponseVO;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Slf4j
@Controller
public class LectureController {

  @Autowired
  private LectureService lectureService;

  @GetMapping("/lecture")
  public ResponseEntity<List<LectureVO>> getLectureList(
      HttpServletRequest request,
      HttpServletResponse response) {
    return ResponseEntity.ok(lectureService.getLectureList());
  }

  @GetMapping("/lecture/detail/{lectureId}")
  public ResponseEntity<List<LectureDetailVO>> getLectureDetailList(
      HttpServletRequest request,
      HttpServletResponse response,
      @PathVariable Integer lectureId) {
    return ResponseEntity.ok(lectureService.getLectureDetailList(lectureId));
  }

  @GetMapping("/lecture/{lectureDetailId}/summary")
  public ResponseEntity<SummaryResponseVO> getSummery(
      HttpServletRequest request,
      HttpServletResponse response,
      @PathVariable Integer lectureDetailId) {
    return ResponseEntity.ok(
        lectureService.getAiSummary(lectureDetailId));
  }

  @GetMapping("/lecture/{lectureDetailId}/keyword")
  public ResponseEntity<KeywordResponseVO> getKeyword(
      HttpServletRequest request,
      HttpServletResponse response,
      @PathVariable Integer lectureDetailId) {
    return ResponseEntity.ok(
        lectureService.getAiKeyword(lectureDetailId));
  }

  @GetMapping("/lecture/{lectureDetailId}/quiz")
  public ResponseEntity<List<QuizVO>> getQuiz(
      HttpServletRequest request,
      HttpServletResponse response,
      @PathVariable Integer lectureDetailId) {
    try {
      return ResponseEntity.ok(
          lectureService.getAiQuiz(lectureDetailId));
    } catch (Exception e) {
      log.error(e.getMessage());
      return ResponseEntity.badRequest().body(null);
    }
  }
}
