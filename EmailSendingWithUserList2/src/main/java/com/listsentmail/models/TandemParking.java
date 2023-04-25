package com.listsentmail.models;

import javax.persistence.Entity;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "demo", schema= "parkingportal")
public class TandemParking {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private String unit;
	private String emailid;
	
	public Integer getid() {
		return id;
	}
	public void set_id(Integer id) {
		this.id = id;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public Object getStatus() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
