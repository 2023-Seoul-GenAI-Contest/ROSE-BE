package io.rose.central.controller;

import io.rose.central.service.UserService;
import io.rose.central.vo.UserLoginVO;
import io.rose.central.vo.UserRetriveVO;
import io.rose.central.vo.UserVO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class UserController {

  @Autowired
  private UserService userService;

  @PostMapping("/user")
  public ResponseEntity<String> createUser(
    HttpServletRequest request,
    HttpServletResponse response,
    @RequestBody UserRetriveVO userRetriveVO
  ) {
    return ResponseEntity.ok(userService.createUser(userRetriveVO));
  }

  @PostMapping("/user/login")
  public ResponseEntity<String> login(
    HttpServletRequest request,
    HttpServletResponse response,
    @RequestBody UserLoginVO userLoginVO
  ) {
    return ResponseEntity.ok(userService.login(userLoginVO));
  }

  @GetMapping("/user/{id}")
  public ResponseEntity<UserVO> getUserDetail(
    HttpServletRequest request,
    HttpServletResponse response,
    @PathVariable Integer id
  ) {
    return ResponseEntity.ok(userService.getUserDetail(id));
  }
}
