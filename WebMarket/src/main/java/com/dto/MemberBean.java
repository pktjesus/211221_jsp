package com.dto;

import java.io.Serializable;

public class MemberBean implements Serializable {
	private int id = 1009;
	private String name = "유관순";
	
	public MemberBean() {
		
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getId() {
		return id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
}
