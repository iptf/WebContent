<%@ page import="com.iptf.*" %>
<%


String firstName = "";
String lastName = "";
String email = "";

String role = "";
String parish = "";

User user = null;	

	try{	
	
	firstName = "Test_FName";
	lastName = "Test_LName";
	email = "test@test.com";	

	parish = "1";	
	role = "C";
	
	
	user = new User();
	user.setFirstName(firstName);
	user.setLastName(lastName);
	user.setParish(parish);	
	
	user.setEmail(email);		
	user.setRole(role);	
  	
	DBManager.testDb(user);
	out.println("<B>User added....</B>");
  	}
  	catch(Exception e)
  	{
  		out.println(e);
  	}
	




%>
 	
