package com.exciting.index.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exciting.dao.AmusementDAO;
import com.exciting.dto.AmusementAimageDTO;
import com.exciting.dto.AmusementDTO;


@Service
public class AmusementServiceImpl implements AmusementService {

	@Autowired
	AmusementDAO dao;
	
	public AmusementServiceImpl() {
		System.out.println("@Service 스프링 자동생성");
	}
	
	@Override
	public List<AmusementAimageDTO> selectList(Map<String, Object> map) {
		return dao.selectList(map);
	}
	
	@Override
	public List<AmusementAimageDTO> selectListAmuseInfoKorea() {
		return dao.selectListAmuseInfoKorea();
	}
	
	@Override
	public List<AmusementAimageDTO> selectListAmuseInfoForeign() {
		return dao.selectListAmuseInfoForeign();
	}
	
	@Override
	public int selectTotalCount(Map<String, Object> map) {
		return dao.selectTotalCount(map);
	}
}
