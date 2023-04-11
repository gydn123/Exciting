package com.exciting.login.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exciting.dao.LoginDao;
import com.exciting.dto.MemberDTO;



@Service
public class LoginServiceImpl implements LoginService{

	//  BookDao는 autowired 할수 있다. 
	//	왜냐하면 BookDao class에 @Repository를 설정해 두었기 때문이다.
	@Autowired
	LoginDao loginDao;

	public LoginServiceImpl() {
		System.out.println("@serviceImpl 스프링 자동생성");
	}

	@Override
	public int insertMember(MemberDTO dto) {
		return loginDao.insertMember(dto);
	}
	
	@Override
	public int idCheck(MemberDTO dto) {
		return loginDao.idCheck(dto);
	}
	
	@Override
	public int loginCheck(MemberDTO dto) {
		return loginDao.loginCheck(dto);
	}
	
	@Override
	public int deleteMember(MemberDTO dto) {
		return loginDao.deleteMember(dto);
	}
}	
