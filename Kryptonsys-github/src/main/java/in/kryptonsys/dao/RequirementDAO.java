package in.kryptonsys.dao;

import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.*;
import com.mysql.jdbc.*;
//import com.mysql.jdbc.ResultSet;

/*
public class RequirementDAO {

	public List<RequirementModel> getRequirementDetails(){
		List<RequirementModel> requirements = new ArrayList<RequirementModel>();
		
		DBCreds dbCreds = new DBCreds();
		DBModel dbModel = dbCreds.getDBCreds();
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/kryptonsys", dbModel.getUserName(), dbModel.getPassword());
			
			String sql = "select requirement from requirements";
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = (ResultSet) ps.executeQuery();
			
			while(rs.next()){
				RequirementModel reqModel = new RequirementModel();
				reqModel.setRequirement(rs.getString(1));
				requirements.add(reqModel);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return requirements;
	}
}
*/

