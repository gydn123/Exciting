package com.exciting.login.service;

import com.exciting.dto.MemberDTO;

public interface LoginService {
	
	public int insertMember(MemberDTO dto);
	
	public int idCheck(MemberDTO dto);
	
	public int loginCheck(MemberDTO dto);
	
	public int deleteMember(MemberDTO dto);
	
}
