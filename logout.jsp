<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>


<% if (session.getAttribute("object") == null) { %>
	<jsp:forward page = "homepage.jsp" />
<% }
session.invalidate();
%>

<!DOCTYPE html>
<html lang="en">

<head>

	<%@ include file="header.jsp" %>
	<link href="css/logout.css" rel="stylesheet">
	<!-- automatically will redirect to index_ex1_b_8XXXXXX.jsp after 2 seconds -->
	<meta http-equiv="refresh" content="2;url=<%=request.getContextPath() %>/homepage.jsp" />

	<title>Αποσύνδεση Χρήστη</title>
	


</head>

<body>

	<div class="container" role="main">

		<div class="alert alert-warning text-center" role="alert"><b></b>Η έξοδος πραγματοποιήθηκε με επιτυχία</b></div>

	</div>

</body>

</html>