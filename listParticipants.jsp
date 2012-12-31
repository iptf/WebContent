<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="com.iptf.*" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>IPTF - Template</title>
<meta name="keywords" content="IPTF" />
<!-- Free CSS Templates from iptf.com -->
<link href="styles/iptf_style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div id="iptf_container">
<jsp:include page="header.jsp" />
<jsp:include page="menu.jsp" />

<div id="iptf_content">
	<div id="iptf_left">
        <div class="left_col_section">        	    
        	 <jsp:include page="participantLeftMenu.jsp" />         
        </div>
    </div> <!-- end of left -->
      
      <div id="iptf_right">
      <c:choose>
      <c:when test="${param.leftMenu == 'search'}">
      	<jsp:include page="participants.jsp" />
      </c:when>
      <c:when test="${param.leftMenu == 'register'}">
      	<jsp:include page="participantSearch.jsp" />
      </c:when>    
      <c:when test="${param.leftMenu == 'addProgram'}">
      	<jsp:include page="addProgram.jsp" />
      </c:when>  
      <c:otherwise>
      	<jsp:include page="participants.jsp" />
      </c:otherwise>       
      </c:choose>
      </div>      
</div>

<jsp:include page="footer.jsp" />
</div> <!-- end of container -->


</body>
</html>