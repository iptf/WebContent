<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>IPTF - Template</title>
<meta name="keywords" content="IPTF" />
<!-- Free CSS Templates from iptf.com -->
<link href="styles/iptf_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@ page import="com.iptf.*" %>
<%
/*
out.println("getContextPath="+request.getContextPath()+"<br>");
out.println("getServletPath="+request.getServletPath()+"<br>");
out.println("getRealPath="+request.getRealPath("")+"<br>");

ServletContext context = session.getServletContext();
String realContextPath = context.getRealPath("/"); 
out.println("context.getRealPath="+realContextPath);
*/

String submitted = request.getParameter("submitted");
String email = null;
String password = null;
User user = null;

if (submitted != null && submitted.equals("true"))
{
	email = request.getParameter("email");
	password = request.getParameter("password");
	
	//out.println(weekending+"<br>");
	//out.println(effort.toString());
	
	try{
	user = DBManager.validateUser(email,password);
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	//user=new User();
	if(user != null)
	{
		session.setAttribute("USER",user);
		response.sendRedirect("participant.jsp");
	}
	else
	{
		out.println("Invalid ID/Password");
	}
}
else
{
%>

<div id="iptf_container">
<jsp:include page="header.jsp" />
<jsp:include page="menu.jsp" />
<jsp:include page="loginBody.jsp" />
<jsp:include page="footer.jsp" />
</div> <!-- end of container -->

<%
}
%>
</body>
</html>