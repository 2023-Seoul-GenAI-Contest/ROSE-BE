package io.rose.central.mapper;

import io.rose.central.dao.UserDAO;
import io.rose.central.vo.UserLoginVO;
import io.rose.central.vo.UserVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {
  int createUser(@Param("UserDAO") UserDAO user);
  int getUserId(@Param("UserLoginVO") UserLoginVO user);
  UserVO getUserDetail(@Param("userId") Integer userId);
}
