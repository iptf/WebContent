<%@ page import="java.util.*,com.iptf.*, com.iptf.db.model.*" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>

 <div class="right_col_section">
     	<h1>Search Participant</h1>      
 </div>
		  
<form name="form2" method="post" action="participant">
	<input type="hidden" name="submitted" value="true">
	<input type="hidden" name="userId" value='<c:out value="${USER.email}"/>'/>
	<table>

		<tr>
			<td>&nbsp;</td>
			<td>First Name</td>
			<td><input type="text" name="firstName" value='<c:out value="${participant.fname }" />' size="30"/></td>
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
