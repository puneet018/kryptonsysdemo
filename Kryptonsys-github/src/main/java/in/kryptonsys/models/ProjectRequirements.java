package in.kryptonsys.models;

public class ProjectRequirements {
	private int projectRequirementId;
	private String requirement;
	private String webLanguage;
	private String appLanguage;
	private String title;
	private String description;
	private String emailId;
	private long MobileNumber;
	
	//Getter-Setter
	public int getProjectRequirementId() {
		return projectRequirementId;
	}
	public void setProjectRequirementId(int projectRequirementId) {
		this.projectRequirementId = projectRequirementId;
	}
	
	public String getRequirement() {
		return requirement;
	}
	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}
	
	public String getWebLanguage() {
		return webLanguage;
	}
	public void setWebLanguage(String webLanguage) {
		this.webLanguage = webLanguage;
	}
	
	public String getAppLanguage() {
		return appLanguage;
	}	
	public void setAppLanguage(String appLanguage) {
		this.appLanguage = appLanguage;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	
	public long getMobileNumber() {
		return MobileNumber;
	}
	public void setMobileNumber(long mobileNumber) {
		MobileNumber = mobileNumber;
	}
		
}
