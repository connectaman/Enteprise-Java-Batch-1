package com.Batch_1.User;

public class UserModel {
private int id;
private String name;
private String email;
private String phone;
private String city;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
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
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
@Override
public String toString() {
	return "UserModel [id=" + id + ", name=" + name + ", email=" + email + ", phone=" + phone + ", city=" + city + "]";
}

}
