package in.kryptonsys.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.kryptonsys.dao.PostProjectRequirements;
import in.kryptonsys.models.ProjectRequirements;

/**
 * Servlet implementation class ProjectRequirementsServlet
 */
@SuppressWarnings("serial")
@WebServlet("/requirementDetails.do")
public class ProjectRequirementsServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PostProjectRequirements postProjectRequirements = new PostProjectRequirements();
		ProjectRequirements projectRequirements = new ProjectRequirements();
		
		String requirement = request.getParameter("requirements");
		
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String email = request.getParameter("email");
		long mobNo = Long.parseLong(request.getParameter("mobNo"));
		
		projectRequirements.setRequirement(requirement);
		projectRequirements.setTitle(title);
		projectRequirements.setDescription(description);
		projectRequirements.setEmailId(email);
		projectRequirements.setMobileNumber(mobNo);
		
		PrintWriter pw = response.getWriter();
		pw.write(requirement);
		
		if(requirement.equals("website")){
			String websiteLanguage = request.getParameter("webLanguages");
			projectRequirements.setWebLanguage(websiteLanguage);
			boolean flag = postProjectRequirements.postWebsiteRequirements(projectRequirements);
			
			pw.println(websiteLanguage);
			
			if(flag){
				pw.println("Your requirement has been submitted successfully");
			}else{
				pw.println(flag);
			}
		}else if(requirement.equals("application")){
			String appLanguage = request.getParameter("appLanguages");
			projectRequirements.setAppLanguage(appLanguage);
			boolean flag = postProjectRequirements.postApplicationRequirements(projectRequirements);
			
			pw.println(appLanguage);
		}else{
			String websiteLanguage = request.getParameter("webLanguages");
			String appLanguage = request.getParameter("appLanguages");
			
			projectRequirements.setWebLanguage(websiteLanguage);
			projectRequirements.setAppLanguage(appLanguage);
			
			boolean flag = postProjectRequirements.postWebsiteAndApplicationRequirements(projectRequirements);
			
			pw.println(websiteLanguage+" "+appLanguage);
		}
		
	}

}
