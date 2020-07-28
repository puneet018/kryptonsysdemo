<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Requirement Details</title>
</head>
<body>
	<form action="requirementDetails.do" method="post">
		<label for="requirements">What do you want : </label> <select
			name="requirements" id="requirements" onchange="enableFields()">
			<option value="0">Select</option>
			<option value="website">Website Development</option>
			<option value="application">Application Development</option>
			<option value="both">Both</option>
		</select> <span id="noReqSelected"></span> <br>
		<br> <label for="webLanguages">Website Language : </label> <select
			name="webLanguages" id="webLanguages" onchange="ifOtherWeb()"
			disabled>
			<option value="0">Select</option>
			<option value="java">Java</option>
			<option value="php">PHP</option>
			<option value="python">Python</option>
			<option value="other">Other</option>
			<option value="any">Any</option>
		</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label for="appLanguages">App
			Language : </label> <select name="appLanguages" id="appLanguages"
			onchange="ifOtherApp()" disabled>
			<option value="0">Select</option>
			<option value="android">Android</option>
			<option value="other">Other</option>
			<option value="any">Any</option>
		</select> <br>
		<br> Title : <input type="text" name="title" id="title"
			onchange="enableSubmit()" placeholder="Enter title here" size="50" />
		<br>
		<br> Description : <input type="text" name="description"
			id="description" onchange="enableSubmit()"
			placeholder="Please provide some Description" size="150" /> <br>
		<br> Email : <input type="text" name="email" id="email"
			onchange="validateEmail()" placeholder="Enter your email id" /> <span
			id="wrongEmail"></span> <br>
		<br> Mobile No.: <input type="text" name="mobNo" id="mobNo"
			onchange="validateMobileNo()" placeholder="Enter your Mobile Number" />
		<span id="wrongMobNo"></span> <br>
		<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
			type="submit" value="submit" id="submit" disabled />
	</form>

	<script type="text/javascript">
		//alert("hello")
		function enableFields(){
			//alert("Hello")
			var requirement = document.getElementById("requirements")
			var selectedText = requirement.options[requirement.selectedIndex].text;
			var selectedValue = requirement.options[requirement.selectedIndex].value;
			//alert(selectedText+" ~ "+selectedValue)
			
			if(selectedValue=="website"){
				//alert(selectedText+" ~ "+selectedValue)
				document.getElementById("webLanguages").disabled=false;
				document.getElementById("appLanguages").disabled=true;
				
				var appLanguages = document.getElementById("appLanguages")
				
				//alert(appLanguages.value)
				appLanguages.value = "0";
			}else if(selectedValue=="application"){
				document.getElementById("appLanguages").disabled=false;
				document.getElementById("webLanguages").disabled=true;
				
				var webLanguages = document.getElementById("webLanguages")
						
				//alert(webLanguages.value)
				webLanguages.value = "0";
			}else if(selectedValue=="both"){
				document.getElementById("webLanguages").disabled=false;
				document.getElementById("appLanguages").disabled=false;
			}else{
				//document.getElementById("noReqSelected").innerHTML = "Please select your Requirement!!"
				document.getElementById("webLanguages").disabled=true;
				document.getElementById("appLanguages").disabled=true;
				alert("Please select your Requirement!!");
			}
			
			enableSubmit()
		}

		function ifOtherWeb(){
			var webLanguage = document.getElementById("webLanguages").value
			//alert(webLanguages)
			if(webLanguage=="other"){
				alert("Please specify the required Web Language in Description")
			}

			//alert(webLanguage)
			
			enableSubmit()
	    }

	    function ifOtherApp(){
		    var appLanguage = document.getElementById("appLanguages").value
		    
		    if(appLanguage=="other"){
		    	alert("Please specify the required App Language in Description")
			}
			//alert(appLanguage)
			
			enableSubmit()
		}

		function validateEmail(){
			var email = document.getElementById("email").value;
			//alert(email);
			//var mailFormat = 

			if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)){
				alert("valid Email Address")
				enableSubmit()
				document.getElementById("wrongEmail").innerHTML = ""
			}else{
				document.getElementById("wrongEmail").innerHTML = "Please enter valid email"
			}	
		}

		function validateMobileNo(){
			var mobNo = document.getElementById("mobNo").value;
			var mobNumberFormat = /^\d{10}$/;

			if(mobNo.match(mobNumberFormat)){
				alert("Valid Mobile Number")
				enableSubmit()
				document.getElementById("wrongMobNo").innerHTML = ""
			}else{
				document.getElementById("wrongMobNo").innerHTML = "Please enter proper Mobile Number"
			}	
			
		}
		
		function enableSubmit(){
			//alert("Testing")
			
			var requirement = document.getElementById("requirements")
			var selectedRequirement = requirement.options[requirement.selectedIndex].value;
			//alert(selectedRequirement)
			
			var webLanguages = document.getElementById("webLanguages")
			var selectedWebLanguage = webLanguages.options[webLanguages.selectedIndex].value;
			//alert(selectedWebLanguage)
			
			var appLanguages = document.getElementById("appLanguages")
			var selectedAppLanguage = appLanguages.options[appLanguages.selectedIndex].value;
			//alert(selectedAppLanguage)
			
			var title = document.getElementById("title")
			
			var description = document.getElementById("description")
			
			var email = document.getElementById("email")
			
			var mobNo = document.getElementById("mobNo")
			
			//alert(selectedRequirement + ", " + selectedWebLanguage + ", " + selectedAppLanguage + ", " + title + ", " + description + ", " + email + ", " + mobNo)
			
			if((selectedRequirement=="website"&&selectedWebLanguage!="0"&&title.value!=""&&description.value!=""&&email.value!=""&&mobNo.value!="")||
				(selectedRequirement=="application"&&selectedAppLanguage!=="0"&&title.value!=""&&description.value!=""&&email.value!=""&&mobNo.value!="")||
				(selectedRequirement=="both"&&selectedWebLanguage!="0"&&selectedAppLanguage!=="0"&&description.value!=""&&title.value!=""&&email.value!=""&&mobNo.value!="")){
				
				document.getElementById("submit").disabled=false;
			}else{
				document.getElementById("submit").disabled=true;
			}
		}
	</script>

</body>
</html>