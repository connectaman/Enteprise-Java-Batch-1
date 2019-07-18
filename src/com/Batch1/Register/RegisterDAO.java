package com.Batch1.Register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class RegisterDAO {

	
	public static int addRegister(RegisterModel r) {
		
		int result = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/Batch1", "root", "Amanulla1997");
			PreparedStatement pst = con.prepareStatement("insert into Batch1.register(name,email,phone,password,city) values(?,?,?,?,?)");
			pst.setString(1,r.getName());
			pst.setString(2, r.getEmail());
			pst.setString(3, r.getPhone());
			pst.setString(4, r.getPassword());
			pst.setString(5, r.getCity());
			result = pst.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	
	
	
}
