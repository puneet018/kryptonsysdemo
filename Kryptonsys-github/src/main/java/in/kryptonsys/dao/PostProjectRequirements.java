package in.kryptonsys.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.mysql.jdbc.*;

import in.kryptonsys.credentials.DBCreds;
import in.kryptonsys.models.DBModel;
import in.kryptonsys.models.ProjectRequirements;

public class PostProjectRequirements {
	
	ProjectRequirements prm = new ProjectRequirements();
	
	public boolean postWebsiteRequirements(ProjectRequirements pr){
		Boolean flag = false;
		
		DBCreds dbCreds = new DBCreds();
		DBModel dbModel = dbCreds.getDBCreds();
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kryptonsys_db?user=root&password=nick");
			//DriverManager.getConnection("jdbc:mysql://localhost:3306/dream_hair?user=root&password=nick");
			String sql = "insert into project_requirements(requirement,web_language,title,description,email_id,mobile_no) values (?,?,?,?,?,?)";
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			
			ps.setString(1, pr.getRequirement());
			ps.setString(2, pr.getWebLanguage());
			ps.setString(3, pr.getTitle());
			ps.setString(4, pr.getDescription());
			ps.setString(5, pr.getEmailId());
			ps.setLong(6, pr.getMobileNumber());
			
			int check = ps.executeUpdate();
			
			if(check==1){
				flag = true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return flag;
	}
	
	public boolean postApplicationRequirements(ProjectRequirements pr){
		Boolean flag = false;
		
		return flag;
	}
	
	public boolean postWebsiteAndApplicationRequirements(ProjectRequirements pr){
		Boolean flag = false;
		
		return flag;
	}
}
