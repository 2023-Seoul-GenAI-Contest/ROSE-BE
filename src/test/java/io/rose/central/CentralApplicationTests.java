package io.rose.central;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ComponentScan("io.rose.central")
@ActiveProfiles("default")
class CentralApplicationTests {

  @Test
  void contextLoads() {}
}
