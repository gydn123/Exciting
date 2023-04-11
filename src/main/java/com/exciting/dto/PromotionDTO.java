package com.exciting.dto;

public class PromotionDTO {

	int promotion_id;
	int amuse_id;
	int ticket_id;
	String promotion_content;
	String promotion_name;
	String promotion_img;
	public int getPromotion_id() {
		return promotion_id;
	}
	public void setPromotion_id(int promotion_id) {
		this.promotion_id = promotion_id;
	}
	public int getAmuse_id() {
		return amuse_id;
	}
	public void setAmuse_id(int amuse_id) {
		this.amuse_id = amuse_id;
	}
	public int getTicket_id() {
		return ticket_id;
	}
	public void setTicket_id(int ticket_id) {
		this.ticket_id = ticket_id;
	}
	public String getPromotion_content() {
		return promotion_content;
	}
	public void setPromotion_content(String promotion_content) {
		this.promotion_content = promotion_content;
	}
	public String getPromotion_name() {
		return promotion_name;
	}
	public void setPromotion_name(String promotion_name) {
		this.promotion_name = promotion_name;
	}
	public String getPromotion_img() {
		return promotion_img;
	}
	public void setPromotion_img(String promotion_img) {
		this.promotion_img = promotion_img;
	}
	@Override
	public String toString() {
		return "PromotionDTO [promotion_id=" + promotion_id + ", amuse_id=" + amuse_id + ", ticket_id=" + ticket_id
				+ ", promotion_content=" + promotion_content + ", promotion_name=" + promotion_name + ", promotion_img="
				+ promotion_img + "]";
	}
	
	

}
