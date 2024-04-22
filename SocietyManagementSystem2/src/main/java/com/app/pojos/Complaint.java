package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.UniqueElements;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "complaint")

public class Complaint
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer complaintid;	
	@Column(length = 20)
	private String phone; 
	@Column(length = 20,nullable = false)
	private String name;
	@Column(name="complaint", length=300)
	private String complaintBody;
	@Column(length=20)
	private String status;
	@Column(length=20)
	private String house;
	@Column(length=40)
	private String email;
	
	public Complaint()
	{
		this.status = "PENDING";
	}
	
	public Complaint(String complaint) {
		this.complaintBody = complaint;
	}
	
	public Integer getComplaintid() {
		return complaintid;
	}

	public void setComplaintid(Integer complaintid) {
		this.complaintid = complaintid;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getComplaintBody() {
		return complaintBody;
	}

	public void setComplaintBody(String complaint) {
		this.complaintBody = complaint;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	 
	public void setHouse(String house) {
		this.house = house;
	}
	
	public String getHouse() {
		return house;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Complaint [complaintid=" + complaintid + ", phone=" + phone + ", Name=" + name + ", complaint="
				+ complaintBody + ", status=" + status + ", house=" + house + "email" + email + "]";
	}

}