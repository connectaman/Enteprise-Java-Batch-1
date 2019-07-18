package com.Batch1.Register;

public class RegisterModel {
// name,email,phone.pass,city
	private String name;
	private String email;
	private String phone;
	private String password;
	private String city;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Override
	public String toString() {
		return "RegisterModel [name=" + name + ", email=" + email + ", phone=" + phone + ", password=" + password
				+ ", city=" + city + "]";
	}
	
	
}
