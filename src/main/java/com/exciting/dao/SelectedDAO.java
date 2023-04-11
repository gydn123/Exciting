package com.exciting.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exciting.dto.SelectedDTO;

@Repository
public class SelectedDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	SelectedDTO selectedDTO = new SelectedDTO();
	
	public int insert(SelectedDTO dto) {
		return sqlSessionTemplate.insert("selected.insert", dto);
	}
	
	public int delete(SelectedDTO dto) {
		return sqlSessionTemplate.delete("selected.delete", dto);
	}
	
	public int check(SelectedDTO dto) {
		return sqlSessionTemplate.selectOne("selected.check", dto);
	}
}
