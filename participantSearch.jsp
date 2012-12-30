<%@ page import="java.util.*,com.iptf.*, com.iptf.db.model.*" %>
<%
	String submitted = request.getParameter("submitted");

String firstName = "";
String lastName = "";
String email = "";
String altEmail = "";
String role = "";
String parish = "";
String parishIndia = "";

String familyName = "";
String fatherName = "";
String motherName = "";

String streetAddress = "";
String suite = "";
String city = "";
String state = "";
String zip = "";

String homePhone = "";
String cellPhone = "";

String gender = "";
String desc = "";

com.iptf.db.model.User user = null;	
ArrayList objList = null;
String userId = request.getParameter("user");
User obj = null;		


if (submitted != null && submitted.equals("true"))
{
	try{	
	
	firstName = request.getParameter("firstName");
	lastName = request.getParameter("lastName");
	email = request.getParameter("email");
	altEmail = request.getParameter("altEmail");

	parish = request.getParameter("parish");
	parishIndia= request.getParameter("parishIndia");
	role = "C";
	
	
	streetAddress = request.getParameter("streetAddress");
	suite = request.getParameter("suite");
	city = request.getParameter("city");
	state = request.getParameter("state");
	zip = request.getParameter("zip");
	
	familyName = request.getParameter("familyName");
	fatherName = request.getParameter("fatherName");
	motherName = request.getParameter("motherName");	
	desc = request.getParameter("desc");
	gender = request.getParameter("gender");
	
	homePhone = request.getParameter("homePhone");
	cellPhone = request.getParameter("cellPhone");

	
	user = new User();
	user.setFirstName(firstName);
	user.setLastName(lastName);
	user.setParish(parish);
	user.setParishIndia(parishIndia);
	
	user.setEmail(email);	
	user.setAltEmail(altEmail);	
	user.setRole(role);
	user.setFamilyName(familyName);
	user.setFatherName(fatherName);
	user.setMotherName(motherName);
	
	user.setStreetAddress(streetAddress);
	user.setCity(city);
	user.setSuite(suite);
	user.setState(state);
	user.setZipCode(zip);
	
	user.setHomePhone(homePhone);
	user.setCellPhone(cellPhone);
	
	user.setDescription(desc);
	user.setGender(gender);
  	
	DBManager.manageParticipant(user,"insert");
	out.println("<B>User added....</B>");
  	}
  	catch(Exception e)
  	{
  		out.println(e);
  	}
	}		


/*
objList= DBManager.getUserList("Manager",0);

if(userId == null)
{
	if(objList != null && objList.size()>0)
	{
		userId = ((User)objList.get(0)).getEmpId();
	}			
}

obj = DBManager.getUserDetails(userId);

ArrayList projectList= DBManager.getProjectList("all",0);
*/
%>
 <div class="right_col_section">
     	<h1>Search Participant</h1>      
 </div>
		  
<form name="form2" method="post">
	<input type="hidden" name="submitted" value="true">
	<input type="hidden" name="userId" value="<%=userId %>">
	<table>

		<tr>
			<td>&nbsp;</td>
			<td>First Name</td>
			<td><input type="text" name="firstName" value="" size="30"></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>Last Name</td>
			<td><input type="text" name="lastName" value="" size="30"></td>
		</tr>	
		<tr>
			<td>&nbsp;</td>
			<td>Family Name</td>
			<td><input type="text" name="familyName" value="" size="30"></td>
		</tr>	
		<tr>
			<td>&nbsp;</td>
			<td>Father's Name</td>
			<td><input type="text" name="fatherName" value="" size="30"></td>
		</tr>	
		<tr>
			<td>&nbsp;</td>
			<td>Mother's Name</td>
			<td><input type="text" name="motherName" value="" size="30"></td>
		</tr>	
		
		<tr>
			<td>&nbsp;</td>
			<td>Parish</td>
			<td>
			<select name="parish">
			<option value="1">STSMCC Garland</option>
			<option value="2">STAC Coppel</option>
			</select>
			</td>
		</tr>	
		<tr>
			<td>&nbsp;</td>
			<td>Parish (India)</td>
			<td><input type="text" name="parishIndia" value=""></td>
		</tr>		
			
		<tr>
			<td>&nbsp;</td>
			<td>Street Address</td>
			<td><input type="text" name="streetAddress" value=""></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>Gender</td>
			<td>
			<select name="gender">
			<option value="M">Male</option>
			<option value="F">Female</option>
			</select>
			</td>
		</tr>		
		
		<tr>
			<td>&nbsp;</td>
			<td>Suite/Floor</td>
			<td><input type="text" name="suite" value=""></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>City</td>
			<td><input type="text" name="city" value=""></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>State</td>
			<td><input type="text" name="state" value=""></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>Zip</td>
			<td><input type="text" name="zip" value=""></td>
		</tr>
		<!-- 
		<tr>
			<td>&nbsp;</td>
			<td>Contact Name</td>
			<td><input type="text" name="contact" value=""></td>
		</tr>
		 -->
		<tr>
			<td>&nbsp;</td>
			<td>email</td>
			<td><input type="text" name="email" value="" size="30"></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>Alternate Email</td>
			<td><input type="text" name="altEmail" value="" size="30"></td>
		</tr>		
		<tr>
			<td>&nbsp;</td>
			<td>CellPhone</td>
			<td><input type="text" name="cellPhone" value=""></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>Home Phone</td>
			<td><input type="text" name="homePhone" value=""></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>Participant Description</td>
			<td><textarea name="desc" cols="60" rows="4"> </textarea></td>
		</tr>	
		<tr>
			<td>&nbsp;</td>
			<td>Photo</td>
			<td><input type="text" name="photoUrl" value=""></td>
		</tr>				
		
		<tr>
			<td colspan="3" align="center"><input type="submit" name="submit" value="submit"></td>
		</tr>	
		
	</table>
	</form>		  
