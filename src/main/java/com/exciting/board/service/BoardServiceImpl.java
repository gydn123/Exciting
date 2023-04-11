package com.exciting.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exciting.board.domain.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO dao;

	@Override
	public List<Map<String, Object>> boardList(Map<String, Object> map) {
		return dao.boardList(map);
	}

	@Override
	public int boardInsert(Map<String, Object> map) {
		return dao.boardInsert(map);
	}

	@Override
	public Map<String, Object> boardView(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.boardView(map);
	}

	@Override
	public int replyInsert(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.replyInsert(map);
	}

	@Override
	public List<Map<String, Object>> getComment(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.getComment(map);
	}

	@Override
	public int updateBoard(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.updateBoard(map);
	}

	@Override
	public int deleteBoard(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.deleteBoard(map);
	}

	@Override
	public int boardVisit(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.boardVisit(map);
	}

	@Override
	public int replyDelete(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.replyDelete(map);
	}

	@Override
	public int replyUpdate(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.replyUpdate(map);
	}

	@Override
	public Map<String, Object> boardCnt(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.boardCnt(map);
	}

	@Override
	public Map<String, Object> boardReplyCnt(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.boardReplyCnt(map);
	}

	@Override
	public int boardImgInsert(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.boardImgInsert(map);
	}

	@Override
	public List<Map<String, Object>> boardImgSelect(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.boardImgSelect(map);
	}

	@Override
	public int deleteBoardImg(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.deleteBoardImg(map);
	}

	

}
