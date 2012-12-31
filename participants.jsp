<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="right_col_section">
     	<h1>Search Participant</h1>      
 </div>
		  
	<input type="hidden" name="submitted" value="true">
	<input type="hidden" name="userId" value='<c:out value="${USER.email}"/>'/>
	<table>

		<tr>
			<th>First Name</th>

			<th>Last Name</th>
		
			<th>Family Name</th>
			
			<th>Father's Name</th>
				
			<th>Email</th>


		</tr>
		
		<c:forEach items="${participants}"  var="participant">
		 <tr>
		   <td>	<a href='participant?leftMenu=search&id=<c:out value='${participant.participantId}'/>'>
		   		<c:out value="${participant.fname }"></c:out></a>  </td>
		   <td>	<c:out value="${participant.lname }"></c:out>  </td>
		   <td>	<c:out value="${participant.familyName }"></c:out>  </td>
		   <td>	<c:out value="${participant.email }"></c:out>  </td>
		 </tr>
		
		</c:forEach>
		
	</table>
  
