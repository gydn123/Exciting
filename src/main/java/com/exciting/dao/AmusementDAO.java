package com.exciting.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exciting.dto.AmusementAimageDTO;
import com.exciting.dto.AmusementDTO;

@Repository
public class AmusementDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
//	AmusementDTO amusementDTO = new AmusementDTO();
//	AmusementAimageDTO amusementAimageDTO = new AmusementAimageDTO();
	
	
	public AmusementDAO() {
		System.out.println("@Repository 스프링 자동생성");
	}
	
	public List<AmusementAimageDTO> selectList(Map<String, Object> map) {
		return sqlSessionTemplate.selectList("amusement.select_list", map);
	}
	
	public List<AmusementAimageDTO> selectListAmuseInfoKorea() {
		return sqlSessionTemplate.selectList("amusement.select_list_amuse_info_korea");
	}
	
	public List<AmusementAimageDTO> selectListAmuseInfoForeign() {
		return sqlSessionTemplate.selectList("amusement.select_list_amuse_info_foreign");
	}
	
	public int selectTotalCount(Map<String, Object> map) {
		return sqlSessionTemplate.selectOne("amusement.select_total_count", map);
	}
	
}
