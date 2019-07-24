package com.Batch_1.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
public static boolean deleteUser(int id) {
	try {
		Class.forName("com.mysql.jdbc.Driver"); 
		Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/Batch1", "root", "Amanulla1997");
		PreparedStatement pst  = con.prepareStatement("delete from Batch1.register where id=?");
		pst.setInt(1,id);
		int result  = pst.executeUpdate();
		if(result>0) {
			return true;
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return false;
}

public static List<UserModel> getUserBySearch(String name){
	List<UserModel> userlist = new ArrayList<>();
	try {
		Class.forName("com.mysql.jdbc.Driver"); 
		Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/Batch1", "root", "Amanulla1997");
		PreparedStatement pst = con.prepareStatement("select id,name,email,phone,city from Batch1.register where phone like ?");
		pst.setString(1, "%"+name+"%");
		ResultSet rs = pst.executeQuery();
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
