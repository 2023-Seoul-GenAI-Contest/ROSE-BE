package io.rose.central.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;

@Controller
public class LectureController {

  @GetMapping("/lecture/{userId}")
  public void getUserLectureList() {
    // return lecture list
  }

  @GetMapping("/lecture/{lectureId}/summery")
  public void getSummery() {
    // return lecture list
  }

  @GetMapping("/lecture/{lectureId}/keyword")
  public void getKeyword() {
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
  //     @Autowired
  // private DataSetSVC datasetsvc;

  // /**
  //  * Retrieve dataset list
  //  * @param request HttpServletRequest
  //  * @param response HttpServletResponse
  //  * @param accept request accept header
  //  * @throws Exception retrieve error
  //  */
  // @GetMapping(value = "/datasets/list")
  // @GetMapping(value = "/dataset/properties/{datasetid}")
  // public DataSetResponseVO getDatasets(HttpServletRequest request, HttpServletResponse response, @PathVariable Integer id)
  //     throws Exception {
  //     DataSetResponseVO datasetList = datasetsvc.getDataSetList();

  //     return datasetList;
  // }
  //     @DeleteMapping("/pipelines/completed/{id}") // PipeLine 삭제
  // public ResponseEntity deletePipeline(
  //     HttpServletRequest request,
  //     HttpServletResponse response,
  //     @RequestHeader(HttpHeaders.ACCEPT) String accept,
  //     @PathVariable Integer id
  // ) {
  //     if (Boolean.FALSE.equals(pipelineSVC.isExists(id))) {
  //         return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Pipeline is not Exist");
  //         // throw new BadRequestException(
  //         //     DataCoreUiCode.ErrorCode.NOT_EXIST_ID,
  //         //     "Pipeline is not Exist"
  //         // );
  //     }
  //     // delete pipeline
  //     pipelineSVC.deletePipeline(id);
  //     return ResponseEntity.ok().build();
  // }
  /**
   * @param request    HttpServletRequest
   * @param response   HttpServletResponse
   * @param accept     request accept header
   * @param pipelineVO create pipeline object
   * @param id         to delete temporary Pipeline
   * @return
   */
  // @Transactional
  // @PostMapping("/pipelines/completed/{id}") // PipeLine 생성시 "등록완료"
  // public ResponseEntity createPipeline(
  //     HttpServletRequest request,
  //     HttpServletResponse response,
  //     @RequestHeader(HttpHeaders.ACCEPT) String accept,
  //     @PathVariable Integer id, //삭제할 임시파이프라인 id
  //     @RequestBody PipelineVO pipelineVO
  // ) {
  //     pipelineSVC.createPipeline(id, pipelineVO);
  //     return ResponseEntity.ok().build();
  // }
}
