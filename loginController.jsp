<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ page import="ismgroup46.*"%>
        <%
String usern = request.getParameter("username");
String passw = request.getParameter("psw");
PetloverService petlov = new PetloverService();
ShelterService shelt = new ShelterService();


if (petlov.authenticate(usern, passw) != null){
    Petlover petlover = petlov.authenticate(usern, passw);
    session.setAttribute("object", petlover);
    if (session.getAttribute("buttonadoption") == "yes") { %>
            session.setAttribute("buttonadoption") == "no");
            <jsp:forward page="Confirmation.jsp" />
            <% } else { %>

                <jsp:forward page="homepage.jsp" />
                <% }
} else if (shelt.authenticate(usern, passw) != null){
    Shelter shelter = shelt.authenticate(usern, passw);
    session.setAttribute("object", shelter);
    %>
                    <jsp:forward page="homepage.jsp" />
                    <%
} else{
    
%>
                        <jsp:forward page="loginpage.jsp" />
                        <%
}
%>