package io.rose.central.code;

public enum LevelCode {
  BEGINNER("Beginner"),
  INTERMEDIATE("Intermediate"),
  ADVANCED("Advanced");

  private String code;

  private LevelCode(String code) {
    this.code = code;
  }

  public String getCode() {
    return code;
  }

  public static LevelCode parseCode(String code) {
    for (LevelCode errorCode : values()) {
      if (errorCode.getCode().equals(code)) {
        return errorCode;
      }
    }
    return null;
  }
}
