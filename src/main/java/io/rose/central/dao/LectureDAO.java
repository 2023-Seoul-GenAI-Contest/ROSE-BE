package io.rose.central.dao;

import lombok.Data;

@Data
public class LectureDAO {
    private Integer lectureId;
    private String category;
    private String level;
    private String title;
    private String detail;
    private String thumbnail;
    private String video;
    private Integer duration;
}
