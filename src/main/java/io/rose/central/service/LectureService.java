package io.rose.central.service;

import io.rose.central.config.rest.RestService;
import io.rose.central.mapper.LectureMapper;
import io.rose.central.vo.ChatRequestVO;
import io.rose.central.vo.ChatResponseVO;
import io.rose.central.vo.LectureRequestVO;
import io.rose.central.vo.QuizVO;
import io.rose.central.vo.SummaryResponseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;

public class LectureService {

  @Value("${genai.base}")
  private String genaiBaseUrl;

  @Autowired
  private LectureMapper lectureMapper;

  @Autowired
  private RestService restService;

  public SummaryResponseVO saveLectureList(Integer lectureId) {
    LectureRequestVO lectureRequestVO = new LectureRequestVO();
    // get lecture info from db
    ResponseEntity<SummaryResponseVO> res = restService.post(
      genaiBaseUrl + "summary",
      null,
      null,
      lectureRequestVO,
      null,
      null,
      SummaryResponseVO.class
    );
    return res.getBody();
  }

  public SummaryResponseVO getLectureList(Integer userId) {
    LectureRequestVO lectureRequestVO = new LectureRequestVO();
    // get lecture info from db
    ResponseEntity<SummaryResponseVO> res = restService.post(
      genaiBaseUrl + "summary",
      null,
      null,
      lectureRequestVO,
      null,
      null,
      SummaryResponseVO.class
    );
    return res.getBody();
  }

  public SummaryResponseVO getAiSummary(Integer lectureId) {
    LectureRequestVO lectureRequestVO = new LectureRequestVO();
    // get lecture info from db
    ResponseEntity<SummaryResponseVO> res = restService.post(
      genaiBaseUrl + "summary",
      null,
      null,
      lectureRequestVO,
      null,
      null,
      SummaryResponseVO.class
    );
    return res.getBody();
  }

  public SummaryResponseVO getAiKeyword(Integer lectureId) {
    LectureRequestVO summaryRequestVO = new LectureRequestVO();
    // get lecture info from db
    ResponseEntity<SummaryResponseVO> res = restService.post(
      genaiBaseUrl + "summary",
      null,
      null,
      summaryRequestVO,
      null,
      null,
      SummaryResponseVO.class
    );
    return res.getBody();
  }

  public QuizVO getAiQuiz(Integer lectureId) {
    LectureRequestVO lectureRequestVO = new LectureRequestVO();
    // get lecture info from db
    ResponseEntity<QuizVO> res = restService.post(
      genaiBaseUrl + "quiz",
      null,
      null,
      lectureRequestVO,
      null,
      null,
      QuizVO.class
    );
    return res.getBody();
  }
}
