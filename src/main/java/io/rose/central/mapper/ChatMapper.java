package io.rose.central.mapper;

import io.rose.central.dao.ChatDAO;
import io.rose.central.vo.ChatHistVO;
import io.rose.central.vo.ChatVO;
import io.rose.central.vo.SessionVO;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ChatMapper {
  int saveChatHist(@Param("ChatVO") ChatVO chatVO);

  int createSessionId(@Param("sessionVO") SessionVO sessionVO);

  List<ChatHistVO> getChatHistory(@Param("ClientId") Integer clientId);

  List<ChatDAO> getChatDetail(
      @Param("ClientId") Integer clientId,
      @Param("SessionId") Integer sessionId);
}
