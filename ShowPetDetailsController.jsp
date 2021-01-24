<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<% if (session.getAttribute("object") == null) {
        session.setAttribute("pushbut", "yes");
 %>
    <jsp:forward page = "loginpage.jsp" />
<% } else if (session.getAttribute("buttonadoption") == "yes"){ 
    session.setAttribute("buttonadoption", "no"); %>
    session.setAttribute("pushbut", "yes");
    <jsp:forward page = "Confirmation.jsp" />
<% } else if (session.getAttribute("buttonadoption") == "no"){ 
    %>
    session.setAttribute("pushbut", "no");
    <jsp:forward page = "ChooseActionAdoption.jsp" />
<% } else { %>
    session.setAttribute("pushbut", "no");
    session.setAttribute("buttonadoption", "no"); 
    <jsp:forward page = "ChooseActionAdoption.jsp" />
<% } %>