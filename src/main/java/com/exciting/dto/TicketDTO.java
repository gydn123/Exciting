package com.exciting.dto;

public class TicketDTO {
	
	int ticket_id;
	int amuse_id;
	int ticket_adult_free;
	int ticket_adult_afternoon;
	int ticket_student_free;
	int ticket_student_afternoon;
	int ticket_kids_free;
	int ticket_kids_afternoon;
	public int getTicket_id() {
		return ticket_id;
	}
	public void setTicket_id(int ticket_id) {
		this.ticket_id = ticket_id;
	}
	public int getAmuse_id() {
		return amuse_id;
	}
	public void setAmuse_id(int amuse_id) {
		this.amuse_id = amuse_id;
	}
	public int getTicket_adult_free() {
		return ticket_adult_free;
	}
	public void setTicket_adult_free(int ticket_adult_free) {
		this.ticket_adult_free = ticket_adult_free;
	}
	public int getTicket_adult_afternoon() {
		return ticket_adult_afternoon;
	}
	public void setTicket_adult_afternoon(int ticket_adult_afternoon) {
		this.ticket_adult_afternoon = ticket_adult_afternoon;
	}
	public int getTicket_student_free() {
		return ticket_student_free;
	}
	public void setTicket_student_free(int ticket_student_free) {
		this.ticket_student_free = ticket_student_free;
	}
	public int getTicket_student_afternoon() {
		return ticket_student_afternoon;
	}
	public void setTicket_student_afternoon(int ticket_student_afternoon) {
		this.ticket_student_afternoon = ticket_student_afternoon;
	}
	public int getTicket_kids_free() {
		return ticket_kids_free;
	}
	public void setTicket_kids_free(int ticket_kids_free) {
		this.ticket_kids_free = ticket_kids_free;
	}
	public int getTicket_kids_afternoon() {
		return ticket_kids_afternoon;
	}
	public void setTicket_kids_afternoon(int ticket_kids_afternoon) {
		this.ticket_kids_afternoon = ticket_kids_afternoon;
	}
	@Override
	public String toString() {
		return "TicketDTO [ticket_id=" + ticket_id + ", amuse_id=" + amuse_id + ", ticket_adult_free="
				+ ticket_adult_free + ", ticket_adult_afternoon=" + ticket_adult_afternoon + ", ticket_student_free="
				+ ticket_student_free + ", ticket_student_afternoon=" + ticket_student_afternoon + ", ticket_kids_free="
				+ ticket_kids_free + ", ticket_kids_afternoon=" + ticket_kids_afternoon + "]";
	}
	
	

}
