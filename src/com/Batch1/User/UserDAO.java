package com.Batch1.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
public static List<UserModel>  getAllUser(){
	List<UserModel> userlist = new ArrayList<>();
	try {
		Class.forName("com.mysql.jdbc.Driver"); 
		Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/Batch1", "root", "Amanulla1997");
		Statement smt = con.createStatement();
		ResultSet rs = smt.executeQuery("select id,name,email,phone,city from Batch1.register");
		while(rs.next()) {
			UserModel u = new UserModel();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setEmail(rs.getString("email"));
			u.setPhone(rs.getString("phone"));
			u.setCity(rs.getString("city"));
			userlist.add(u);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return userlist;
}
}
