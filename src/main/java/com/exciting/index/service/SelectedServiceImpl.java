package com.exciting.index.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exciting.dao.AmusementDAO;
import com.exciting.dao.PromotionDAO;
import com.exciting.dao.SelectedDAO;
import com.exciting.dto.AmusementAimageDTO;
import com.exciting.dto.AmusementDTO;
import com.exciting.dto.PromotionDTO;
import com.exciting.dto.SelectedDTO;


@Service
public class SelectedServiceImpl implements SelectedService {

	@Autowired
	SelectedDAO dao;
	
	public SelectedServiceImpl() {
		System.out.println("@Service 스프링 자동생성");
	}
	
	@Override
	public int insert(SelectedDTO dto) {
		return dao.insert(dto);
	}
	
	@Override
	public int delete(SelectedDTO dto) {
		return dao.delete(dto);
	}
	
	@Override
	public int check(SelectedDTO dto) {
		return dao.check(dto);
	}
	
}
