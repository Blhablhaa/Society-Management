package com.app.pojos;

import java.util.ArrayList;
import java.util.List;

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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.UniqueElements;
import org.springframework.context.annotation.Primary;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="house")
public class House{
	@Id
	private String house_no;
	@Enumerated(EnumType.STRING)
	@Column(name="block",length = 1)
	private Block block;
	@Column(name="owner",length=20)
	private String name;
	private String number;
	
	public House() {
		super();
	}

	public String getHouse_no() {
		return house_no;
	}

	public void setHouse_no(String house_no) {
		this.house_no = house_no;
	}

	public Block getBlock() {
		return block;
	}

	public void setBlock(Block block) {
		this.block = block;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public House(String house_no, @NotBlank(message = "User ID is required") Block block, String name, String number) {
		super();
		this.house_no = house_no;
		this.block = block;
		this.name = name;
		this.number = number;
	}

	@Override
	public String toString() {
		return "House [house_no=" + house_no + ", block=" + block + ", name=" + name + ", number=" + number + "]";
	}
	
	
	

	}
