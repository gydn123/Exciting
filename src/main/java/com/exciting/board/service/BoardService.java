package com.exciting.board.service;

import java.util.List;
import java.util.Map;

public interface BoardService {
	public List<Map<String, Object>> boardList(Map<String, Object> map);
	public List<Map<String, Object>> getComment(Map<String, Object> map);
	public List<Map<String, Object>> boardImgSelect(Map<String, Object> map);
	public int boardInsert(Map<String,Object> map);
	public int replyInsert(Map<String,Object> map);
	public int updateBoard(Map<String,Object> map);
	public int deleteBoard(Map<String,Object> map);
	public int boardVisit(Map<String,Object> map);
	public Map<String, Object> boardView(Map<String,Object> map);
	public Map<String, Object> boardCnt(Map<String,Object> map);
	public Map<String, Object> boardReplyCnt(Map<String,Object> map);
	public int replyDelete(Map<String,Object> map);
	public int replyUpdate(Map<String,Object> map);
	public int boardImgInsert(Map<String,Object> map);
	public int deleteBoardImg(Map<String,Object> map);

}
