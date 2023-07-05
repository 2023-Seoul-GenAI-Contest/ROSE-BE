package io.rose.central.service;

import io.rose.central.config.rest.RestService;
import io.rose.central.dao.LectureDetailDAO;
import io.rose.central.mapper.LectureMapper;
import io.rose.central.vo.KeywordResponseVO;
import io.rose.central.vo.LectureDetailVO;
import io.rose.central.vo.LectureRequestVO;
import io.rose.central.vo.LectureVO;
import io.rose.central.vo.QuizVO;
import io.rose.central.vo.SummaryResponseVO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class LectureService {

  @Value("${genai.base}")
  private String genaiBaseUrl;

  @Value("${video.base}")
  private String videoBaseUrl;

  @Autowired
  private LectureMapper lectureMapper;

  @Autowired
  private RestService restService;

  @Autowired
  private ObjectMapper objectMapper;

  public List<LectureVO> getLectureList() {
    return lectureMapper.getLectureList();
  }

  public List<LectureDetailVO> getLectureDetailList(Integer parentId) {
    List<LectureDetailVO> res = new ArrayList<LectureDetailVO>();
    List<LectureDetailDAO> lectureDetailDAO = lectureMapper.getLectureDetailList(parentId.toString());
    for (LectureDetailDAO el : lectureDetailDAO) {
      LectureDetailVO lectureDetailVO = new LectureDetailVO();
      lectureDetailVO.setLectureDetail(el);
      lectureDetailVO.setVideoLink(videoBaseUrl + el.getTitle() + ".mp4");
      res.add(lectureDetailVO);
    }
    return res;
  }

  public SummaryResponseVO getAiSummary(Integer lectureDetailId) {
    LectureRequestVO lectureRequestVO = lectureMapper.getLectureDetail(lectureDetailId);
    ResponseEntity<SummaryResponseVO> res = restService.post(
        genaiBaseUrl + "summary",
        null,
        null,
        lectureRequestVO,
        null,
        null,
        SummaryResponseVO.class);
    return res.getBody();
  }

  public KeywordResponseVO getAiKeyword(Integer lectureDetailId) {
    LectureRequestVO lectureRequestVO = lectureMapper.getLectureDetail(lectureDetailId);
    ResponseEntity<KeywordResponseVO> res = restService.post(
        genaiBaseUrl + "keyword",
        null,
        null,
        lectureRequestVO,
        null,
        null,
        KeywordResponseVO.class);
    return res.getBody();
  }

  public List<QuizVO> getAiQuiz(Integer lectureDetailId) throws Exception {
    LectureRequestVO lectureRequestVO = lectureMapper.getLectureDetail(lectureDetailId);
    ResponseEntity<String> res = restService.post(
        genaiBaseUrl + "quiz",
        null,
        null,
        lectureRequestVO,
        null,
        null,
        String.class);
    return objectMapper.readValue(res.getBody(), new TypeReference<List<QuizVO>>() {
    });
  }
}
