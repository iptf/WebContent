   <%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
    <div id="iptf_menu">
        <ul>
            <li><a href="index.jsp" class="current">Home</a></li>
            <li><a href="participant.jsp">Participant</a></li>
            <li><a href="index.jsp">Manage</a></li>
            <li><a href="index.jsp">About Us</a></li> 
            <li><a href="index.jsp" class="last">Contact Us</a></li>  
            <c:if test="${USER != null }"></c:if>
             <li><a href="logout.jsp" class="last">Logout</a></li>                   
        </ul> 
    </div> <!-- end of menu -->