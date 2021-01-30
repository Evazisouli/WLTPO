<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%


String id = request.getParameter("idpetlover"); 
String name = request.getParameter("name"); 
String surname = request.getParameter("surname"); 
String password = request.getParameter("password");
String confirm = request.getParameter("confirm");
String city = request.getParameter("city");
String area = request.getParameter("area");
String email = request.getParameter("mail");
String phone = request.getParameter("phone");
String desc = request.getParameter("description");
String image = request.getParameter("image");

%>

<!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Εγγραφή</title>
        <%@ include file="header.jsp" %>
        <link href="css/formz.css" rel="stylesheet">
        <link href="css/homepage.css" rel="stylesheet">
        
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    </head>

	<body>
        <%@ include file="navigationmenu.jsp" %>

		<div class="container theme-showcase" role="main">

			<!-- Page Title -->
			<% 
			if(name.length() >= 5 && surname.length() >= 5 && id.length() >= 5 && password.length() >= 5 && confirm.equals(password)) {
               PetloverService lover = new PetloverService();
               lover.register(new Petlover(id, password, name, surname, city, area, email, phone, desc, image));
            
            %>
            
            <h1 style="color:black; text-align: center; font-size:36px;"><b>Εγγραφήκατε επιτυχώς στην πλατφόρμα μας!</b></h1>

            <p style="color:black; text-align: center; font-size:20px;"><b>Ονοματεπώνυμο: <%=name %> <%=surname %></b></a></p>
            <p style="color:black; text-align: center; font-size:20px;"><b>Username: <%=id %></b></a></p>
            <p style="color:black; text-align: center; font-size:20px;"><b>Συνδεθείτε </b><a style="color:blue;" href="http://ism.dmst.aueb.gr/ismgroup46/loginpage.jsp"><b> εδω.</b></a></p>
           

			<% } else {
				%>
				<div class="page-header">
					<h1>Registration form has arrors</h1>
				</div>
				<div class="alert alert-danger" role="alert">
					<ol class ="list-unstyled">
						<ol>
							<% if (name.length() < 5) { %>
								<li><p>Το ονομά σας πρέπει να είναι πάνω από 5 χαρακτήρες</p></li>
							<% } if(surname.length() < 5) { %>
								<li><p>Το επίθετο σας πρέπει να είναι πάνω από 5 χαρακτήρες</p></li>
							<% } if (id.length() <5) { %>
								<li><p>Το username σας πρέπει να είναι πάνω από 5 χαρακτήρες</p></li>
							<% } if (password.length() <5) { %>
								<li><p>Ο κωδικός σας πρέπει να είναι πάνω από 5 χαρακτήρες</p></li>
							<% } if(!confirm.equals(password)) { %>
                                <li><p>Ο κωδικός σας δεν επαληθεύτηκε σωστά</p></li>
                                <% } %>
						</ol>
					</ol>
				</div>
				<a href="http://ism.dmst.aueb.gr/ismgroup46/signup1.jsp" role="button" class="btn btn-info">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> Back to the form
				</a>
		
		<% } %>
				
            </div>
	</body>
</html>