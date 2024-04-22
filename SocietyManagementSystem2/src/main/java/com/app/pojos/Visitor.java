package com.app.pojos;

import javax.persistence.*;

@Entity
@Table(name="visitor")
public class Visitor {
	@Id
	private String phone;
	private String visitorname;
	private String purpose;
	private String house;
	private boolean permission;
	
	public Visitor() {
		this.permission = false;
	}
	

	public Visitor(String phone, String visitorname, String purpose, String house) {
		super();
		this.phone = phone;
		this.visitorname = visitorname;
		this.purpose = purpose;
		this.house = house;
	}


	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getVisitorname() {
		return visitorname;
	}

	public void setVisitorname(String visitorname) {
		this.visitorname = visitorname;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getHouse() {
		return house;
	}

	public void setHouse(String house) {
		this.house = house;
	}

	public boolean isPermission() {
		return permission;
	}

	public void setPermission(boolean permission) {
		this.permission = permission;
	}


	@Override
	public String toString() {
		return "Visitor [phone=" + phone + ", visitorname=" + visitorname + ", purpose=" + purpose + ", house=" + house
				+ ", permission=" + permission + "]";
	}

	
	

}
