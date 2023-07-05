package io.rose.central.vo;

import io.rose.central.dao.LectureDetailDAO;
import lombok.Data;

@Data
public class LectureDetailVO {
    private LectureDetailDAO lectureDetail;
    private String videoLink;
}
