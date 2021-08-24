package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.LinkedList;

import com.model.Trainee;


public class tRequestStroreDao {
	
	DBConnect db=new DBConnect();

	
	public LinkedList<Trainee> storeToTrainee(Trainee t) {
		int i=0;
		
		Connection con=db.getConnection();
			
		LinkedList<Trainee> lstTrainee=new LinkedList<Trainee>();
					
		try {
				PreparedStatement pstate=con.prepareStatement("insert into requestTrainee values(?,?,?,?,?,?)");
				pstate.setString(1,t.gettName());
				pstate.setString(2, t.gettEmail());
				pstate.setDouble(3, t.gettMobNo());
				pstate.setDouble(4, t.gettAadharNo());
				pstate.setString(5, t.gettEduDetails());
				pstate.setInt(6, t.getBussunitId());
				pstate.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		return lstTrainee;
	}
}

