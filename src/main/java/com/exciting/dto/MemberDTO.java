package com.exciting.dto;

import java.sql.Date;

public class MemberDTO {
	
	String member_id;
	String m_name;
	String m_birth;
	String m_pass;
	String m_email;
	int m_point;
	String m_address;
	Date m_regidate;
	String m_phone;
	String m_gender;
	
	public MemberDTO() {
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_birth() {
		return m_birth;
	}

	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}

	public String getM_pass() {
		return m_pass;
	}

	public void setM_pass(String m_pass) {
		this.m_pass = m_pass;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public int getM_point() {
		return m_point;
	}

	public void setM_point(int m_point) {
		this.m_point = m_point;
	}

	public String getM_address() {
		return m_address;
	}

	public void setM_address(String m_address) {
		this.m_address = m_address;
	}

	public Date getM_regidate() {
		return m_regidate;
	}

	public void setM_regidate(Date m_regidate) {
		this.m_regidate = m_regidate;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public String getM_gender() {
		return m_gender;
	}

	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}

	@Override
	public String toString() {
		return "MemberDTO [member_id=" + member_id + ", m_name=" + m_name + ", m_birth=" + m_birth + ", m_pass="
				+ m_pass + ", m_email=" + m_email + ", m_point=" + m_point + ", m_address=" + m_address
				+ ", m_regidate=" + m_regidate + ", m_phone=" + m_phone + ", m_gender=" + m_gender + "]";
	}
	
	
	
}
