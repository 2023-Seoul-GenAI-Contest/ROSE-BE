package io.rose.central.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import io.rose.central.dao.LectureDetailDAO;
import io.rose.central.vo.LectureRequestVO;
import io.rose.central.vo.LectureVO;

@Mapper
public interface LectureMapper {
    List<LectureVO> getLectureList();

    List<LectureDetailDAO> getLectureDetailList(@Param("parentId") String parentId);

    LectureRequestVO getLectureDetail(@Param("lectureDetailId") Integer lectureDetailId);
}
