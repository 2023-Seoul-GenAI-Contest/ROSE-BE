package io.rose.central.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class RecommandController {

  @PostMapping("/recommend/lecture")
  public void getRecommand() {
    // return recommand list
  }
}
