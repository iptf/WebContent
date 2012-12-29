    <%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
	<c:set var="user" value="${sessionScope.USER}" />
	<div id="iptf_header">  	
        <div id="out_mission_section">          
        </div>
    </div> <!-- end of header -->
    <div id="iptf_welcome" align="left">
 	<c:if test="${user != null}" >
    Welcome , ${user.firstName}&nbsp${user.lastName}:${user.parishName} &nbsp; 
	</c:if>
    </div>