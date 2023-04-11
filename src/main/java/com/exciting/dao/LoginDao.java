package com.exciting.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exciting.dto.MemberDTO;

@Repository
public class LoginDao {
	
//	root-context.xml <bean>에 설정한 class를 자동으로 인식해서 생성해준다.
	@Autowired
	public SqlSessionTemplate sqlSessionTemplate ;
	
	
	public LoginDao() {
		System.out.println("@Repository 스프링 자동생성");
	}
	
	public int insertMember(MemberDTO dto) {
		System.out.println("memberDAO.insertMember(dto) 접근");
		return sqlSessionTemplate.insert("loginMapper.insertMember",dto);
	}
	
	public int idCheck(MemberDTO dto) {
		System.out.println("memberDAO.idCheck(dto) 접근");
		return sqlSessionTemplate.selectOne("loginMapper.idCheck",dto);
	}
	
	public int loginCheck(MemberDTO dto) {
		System.out.println("memberDAO.loginCheck(dto) 접근");
		return sqlSessionTemplate.selectOne("loginMapper.loginCheck",dto);
	}
	
	public int deleteMember(MemberDTO dto) {
		return sqlSessionTemplate.selectOne("loginMapper.deleteMember",dto);
	}
	
}
