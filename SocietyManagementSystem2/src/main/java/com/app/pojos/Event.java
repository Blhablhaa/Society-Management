package com.app.pojos;

import java.sql.Date;
import java.time.LocalDate;

import javax.persistence.*;
import javax.validation.constraints.Email;

import org.hibernate.annotations.ValueGenerationType;

@Entity
@Table(name="event")
public class Event {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int eventid;
	@Column(length=30)
	private String email;
	@Column(length=15)
	private String phone;
	@Column(length=20)
	private  String house;
	@Column(length=50)
	private String event_name;
	@Column(length=300)
	private String message;
	@Column(length=20)
	private String time;
	private Date date;
	public Event(){}
	
	
	
	public Event(String event_name, String message, String time, String date) {
		super();
		this.event_name = event_name;
		this.message = message;
		this.time = time;
		this.date = Date.valueOf(date);
	}
	
	


	public Event(String email, String phone, String house, String event_name, String message,
			String time, Date date) {
		super();
		this.email = email;
		this.phone = phone;
		this.house = house;
		this.event_name = event_name;
		this.message = message;
		this.time = time;
		this.date = date;
	}



	public int getEventid() {
		return eventid;
	}
	public void setEventid(int eventid) {
		this.eventid = eventid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getHouse() {
		return house;
	}
	public void setHouse(String house) {
		this.house = house;
	}
	public String getEvent_name() {
		return event_name;
	}
	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Event [eventid=" + eventid + ", email=" + email + ", phone=" + phone + ", house=" + house
				+ ", event_name=" + event_name + ", message=" + message + ", time=" + time + ", date=" + date + "]";
	}
}
