package io.rose.central.vo;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {
    private Integer id;
    private String name;
    private String email;
    private String phone;
    private String level;
    private Integer enrollLecture;
    private Integer finshLecture;
    private Date createdAt;
    private Date modifiedAt;
}
