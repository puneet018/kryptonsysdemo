package in.kryptonsys.credentials;

import in.kryptonsys.models.DBModel;

public class DBCreds {
	public DBModel getDBCreds(){
		DBModel dbModel = new DBModel();
		dbModel.setUserName("root");
		dbModel.setPassword("nick");
		
		return dbModel;
	}
}
