package io.rose.central.dao;

import lombok.Data;

@Data
public class LectureDetailDAO {
    private Integer lectureDetailId;
    private Integer lectureSeq;
    private String title;
    private String displayTitle;
    private String parentId;
    private String text;
}
