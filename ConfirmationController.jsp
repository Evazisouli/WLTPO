<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ismgroup46.*"%>

<% 
	if (session.getAttribute("request") == null) {
		
%>
<jsp:forward page="ShowPetDetails.jsp" />
<% } 
String rq = request.getParameter("delRequest");
RequestService ser = new RequestService();
ser.deleteRequest(rq); %> 

<!DOCTYPE html>
<html lang="en">

<head>

	<%@ include file="header.jsp" %>
	<link href="css/logout.css" rel="stylesheet">
	<!-- automatically will redirect to index_ex1_b_8XXXXXX.jsp after 2 seconds -->
	<meta http-equiv="refresh" content="2;url=<%=request.getContextPath() %>/ChooseActionAdoption.jsp" />

	<title>Αναίρεση Αιτήματος</title>
	


</head>

<body>

	<div class="container" role="main">

		<div class="alert alert-danger text-center" role="alert"><b></b>Το αίτημά σας αναιρέθηκε με επιτυχία!</b></div>

	</div>

</body>

</html>
    