package com.exciting.index.service;

import java.util.List;

import com.exciting.dto.PromotionDTO;
import com.exciting.dto.SelectedDTO;

public interface SelectedService {
	public int insert(SelectedDTO dto);
	public int delete(SelectedDTO dto);
	public int check(SelectedDTO dto);
}
