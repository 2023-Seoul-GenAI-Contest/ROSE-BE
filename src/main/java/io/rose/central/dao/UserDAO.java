package io.rose.central.dao;

import io.rose.central.vo.UserRetriveVO;
import lombok.Data;

@Data
public class UserDAO {

  private UserRetriveVO userRetriveVO;
  private Integer enrollLecture;
  private Integer finshLecture;
  private String level;
}
