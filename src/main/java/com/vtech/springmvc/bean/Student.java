package com.vtech.springmvc.bean;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

public class Student {

	@NotNull(message = "Name is required")
	@Size(min = 10, max = 50, message = "Name is valid between 10 and 50 characters")
	private String name;
	
	@NotNull(message = "Standard is required")
	@Size(min = 1, max = 3, message = "Standard is valid between 1 and 3 characters")
	private String standard;
	
	@NotNull(message = "Mobile is required")
	@Size(min = 10, max = 10, message = "Mobile is valid for 10 characters")
	private String mobile;
	
	@NotNull(message = "Email is required")
	@Email(message = "Email should be valid")
	@Size(max = 50, message = "Email is valid upto 50 characters")
	private String email;

	public String getName() {
		return name;
	}

	public String getStandard() {
		return standard;
	}

	public String getMobile() {
		return mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Student(String name, String standard, String mobile, String email) {
		super();
		this.name = name;
		this.standard = standard;
		this.mobile = mobile;
		this.email = email;
	}

	@Override
	public String toString() {
		return "Student [name=" + name + ", standard=" + standard + ", mobile=" + mobile + ", email=" + email + "]";
	}

}
