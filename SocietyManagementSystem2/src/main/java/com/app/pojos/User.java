package com.app.pojos;

import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.UniqueElements;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="User")
public class User {
	@Id
	@Column(length = 100,unique = true, nullable = false)
	private String email;
	@Column(length = 20)
	private String phone; 
	
	@Column(length = 20,nullable = false)
	private String Name;

	//@Pattern(regexp = "((?=.*\\d)(?=.*[a-z])(?=.*[#@$*]).{5,20})", message = "Blank or Invalid password")
	@Column(length=20,nullable=false)
	private String password;
	@Column(name="house",length=10)
	private String house;
	@Enumerated(EnumType.STRING)
	@Column(name="user_role",length = 20)	
	private Role role;
	
	
	public User() {
		// TODO Auto-generated constructor stub
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


	public String getName() {
		return Name;
	}


	public void setName(String name) {
		Name = name;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getHouse() {
		return house;
	}


	public void setHouse(String house) {
		this.house = house;
	}


	public Role getRole() {
		return role;
	}


	public void setRole(Role role) {
		this.role = role;
	}


	public User(@UniqueElements(message = "email should be unique") String email,
			@NotBlank(message = "User ID is required") @UniqueElements(message = "userid should be unique") String phone,
			@NotBlank(message = "first name is required") String name, String password, String house, Role role) {
		super();
		this.email = email;
		this.phone = phone;
		Name = name;
		this.password = password;
		this.house = house;
		this.role = role;
	}


	@Override
	public String toString() {
		return "User [email=" + email + ", phone=" + phone + ", Name=" + Name + ", password=" + password + ", house="
				+ house + ", role=" + role + "]";
	}
	


	
	
	



	
	

}
