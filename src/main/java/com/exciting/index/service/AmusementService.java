package com.exciting.index.service;

import java.util.List;
import java.util.Map;

import com.exciting.dto.AmusementAimageDTO;
import com.exciting.dto.AmusementDTO;


public interface AmusementService {
	public List<AmusementAimageDTO> selectList(Map<String, Object> map);
	public List<AmusementAimageDTO> selectListAmuseInfoKorea();
	public List<AmusementAimageDTO> selectListAmuseInfoForeign();
	public int selectTotalCount(Map<String, Object> map); 
	
}
