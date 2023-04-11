package com.exciting.dto;


public class OrderDTO {
	
	int order_id;
	String member_id;
	int promotion_id;
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getPromotion_id() {
		return promotion_id;
	}
	public void setPromotion_id(int promotion_id) {
		this.promotion_id = promotion_id;
	}
	@Override
	public String toString() {
		return "OrderDTO [order_id=" + order_id + ", member_id=" + member_id + ", promotion_id=" + promotion_id + "]";
	}
	
	

}
