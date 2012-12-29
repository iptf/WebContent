    <%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
	<c:set var="user" value="${sessionScope.USER}" />
 
    <div id="iptf_menu">
        <ul>
            <li><a href="index.jsp" class="current">Home</a></li>
            <li><a href="participant.jsp">Participant</a></li>
            <li><a href="index.jsp">Manage</a></li>           
            <li><a href="index.jsp" class="last">Contact Us</a></li>

            <c:if test="${user != null}" >
            	<li><a href="logout.jsp">Log out</a></li>
            </c:if>
                  
        </ul> 
    </div> <!-- end of menu -->