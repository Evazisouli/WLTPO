<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="ismgroup46.*"%>
<%@ page import="java.util.UUID"%>

<%
String sid = (String)session.getAttribute("id");
Petlover user = (Petlover)session.getAttribute("object");
String x = UUID.randomUUID().toString();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Επιβεβαίωση!</title>
    <%@ include file="header.jsp" %>
    <link href="css/formz.css" rel="stylesheet">
    <link href="css/homepage.css" rel="stylesheet">
    
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    


</head>
<body>
    <%@ include file="navigationmenu.jsp" %>

<h1 style="color:black; text-align: center; font-size:36px;"><b>Το αίτημα σας για δημοσίευση υιοθεσίας ζώου καταγράφηκε!</b></h1>
<p style="color:black; text-align: center; font-size:20px;"><b>Θα λάβετε την απάντηση από τη WLTPO στην ηλεκτρονική διεύθυνση <%= user.getMail() %>!</b></a></p>
<p style="color:black; text-align: center; font-size:20px;"><b>Αριθμός Αιτήματος: <%= x %></b></a></p>
<p style="color:black; text-align: center; font-size:20px;"><b>Ονοματεπώνυμο: <%= user.getName() %> <%= user.getSurname() %></b></a></p>


<%@ include file="footer.jsp" %>
</body>

</html>



