package com.exciting.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.exciting.dto.MemberDTO;
import com.exciting.login.service.LoginService;

@RestController
public class LoginApiController {
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping(value = "/idCheck")
	public int idCheck(MemberDTO dto){
		System.out.println("/idCheck 진입!!");
		
		int idCheck = loginService.idCheck(dto);
		System.out.println("/idCheck // idCheck : " + idCheck);
		
		return idCheck;
	}
	
	@RequestMapping(value = "/loginCheck")
	public int loginCheck(MemberDTO dto){
		System.out.println("/loginCheck 진입!!");
		
		System.out.println("member_id : "+dto.getMember_id());
		System.out.println("m_pass : "+dto.getM_pass());
		
		int loginCheck = loginService.loginCheck(dto);
		System.out.println("/loginCheck // loginCheck : " + loginCheck);
		
		return loginCheck;
	}
	
}
