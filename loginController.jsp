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
            session.setAttribute("buttonadoption","no");
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
    if (session.getAttribute("object") != null) { %>
        <jsp:forward page="ChooseActionAdoption.jsp" />
    <% } else {

    
        request.setAttribute("message", "Wrong username or password");
%>
        <jsp:forward page="loginpage.jsp" />
                        <%
    }
}
%>