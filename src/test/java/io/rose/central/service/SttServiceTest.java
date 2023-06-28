package io.rose.central.service;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class SttServiceTest {

  @Autowired
  private SttService sttService;

  @Test
  void testGetProcessorInfo() throws Exception {
    sttService.getProcessorInfo();
  }
}
