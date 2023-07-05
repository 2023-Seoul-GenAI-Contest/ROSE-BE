package io.rose.central.vo;

import java.util.List;

import lombok.Data;

@Data
public class KeywordResponseVO {
    private String lectureCode;
    private List<KeywordVO> keyword;
}
