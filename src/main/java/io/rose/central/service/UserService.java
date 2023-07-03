package io.rose.central.service;

import io.rose.central.code.LevelCode;
import io.rose.central.dao.UserDAO;
import io.rose.central.mapper.UserMapper;
import io.rose.central.vo.UserLoginVO;
import io.rose.central.vo.UserRetriveVO;
import io.rose.central.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

  @Autowired
  private UserMapper userMapper;

  public String createUser(UserRetriveVO userRetriveVO) {
    // 난수 생성으로 enroll, finsh 값 생성
    double dValue = Math.random();
    double pValue = Math.random();
    int enrollValue = (int) (dValue * 10);
    int finshValue = (int) (pValue * 10);
    UserDAO userDAO = new UserDAO();
    userDAO.setUserRetriveVO(userRetriveVO);
    userDAO.setEnrollLecture(enrollValue);
    userDAO.setFinshLecture(finshValue);
    userDAO.setLevel(LevelCode.BEGINNER.getCode());
    Integer userId = userMapper.createUser(userDAO);
    return userId.toString();
  }

  public String login(UserLoginVO userLoginVO) {
    Integer userId = userMapper.getUserId(userLoginVO);
    return userId.toString();
  }

  public UserVO getUserDetail(Integer userId) {
    UserVO user = userMapper.getUserDetail(userId);
    return user;
  }
}
