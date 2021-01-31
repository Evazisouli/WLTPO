<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%


String id = request.getParameter("idshelter"); 
String name = request.getParameter("name"); 
String password = request.getParameter("password");
String confirm = request.getParameter("confirm");
String city = request.getParameter("city");
String area = request.getParameter("area");
String address = request.getParameter("address");
int TK=Integer.parseInt(request.getParameter("TK")); 
String contact = request.getParameter("contact");
String email = request.getParameter("mail");
String phone = request.getParameter("phone");
String desc = request.getParameter("description");
String needs = request.getParameter("needs");
String image=request.getParameter("name");

// convert from ISO-8859-1 (latin) to UTF-8 so as to support Greek characters
name = new String(name.getBytes("ISO-8859-1"), "UTF-8");
id = new String(id.getBytes("ISO-8859-1"), "UTF-8");
password = new String(password.getBytes("ISO-8859-1"), "UTF-8");
confirm = new String(confirm.getBytes("ISO-8859-1"), "UTF-8");
city = new String(city.getBytes("ISO-8859-1"), "UTF-8");
area = new String(area.getBytes("ISO-8859-1"), "UTF-8");
phone = new String(phone.getBytes("ISO-8859-1"), "UTF-8");
desc = new String(desc.getBytes("ISO-8859-1"), "UTF-8");
address = new String(address.getBytes("ISO-8859-1"), "UTF-8");
contact = new String(contact.getBytes("ISO-8859-1"), "UTF-8");
needs = new String(needs.getBytes("ISO-8859-1"), "UTF-8");

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
			if(id.length() >=5 && name.length() >= 5 && password.length() >= 5 && confirm.equals(password)) {
               ShelterService shelter = new ShelterService();
               shelter.register(new Shelter(id, name, password, city, area, address, TK, contact, email, phone, desc, needs, image));
            
            %>
            
            <h1 style="color:black; text-align: center; font-size:36px;"><b>Εγγραφήκατε επιτυχώς στην πλατφόρμα μας!</b></h1>

            <p style="color:black; text-align: center; font-size:20px;"><b>Ονομα Φιλοζωικής: <%=name %></b></a></p>
            <p style="color:black; text-align: center; font-size:20px;"><b>Username: <%=id %></b></a></p>
            <p style="color:black; text-align: center; font-size:20px;"><b>Συνδεθείτε </b><a style="color:blue;" href="http://ism.dmst.aueb.gr/ismgroup46/loginpage.jsp"><b> εδω.</b></a></p>
           

			<% } else {
				%>
				<h1>Παρουσιαστηκέ πρόβλημα κατα την εγγραφή σας!</h1>

				
				<div class="alert alert-warning" role="alert">
					<ol class ="list-unstyled">
						<ol>
                            <% if (name.length() < 5) { %>
								<li><p>Το όνομα της Φιλοζωικης πρέπει να περιέχει τουλάχιστον 5 χαρακτήρες</p></li>
							<% } if (password.length() <5) { %>
								<li><p>Ο κωδικός πρέπει να περιέχει τουλάχιστον 5 χαρακτήρες</p></li>
							<% } if (id.length() <5) { %>
								<li><p>Το username σας πρέπει να περιέχει τουλάχιστον 5 χαρακτήρες</p></li>
							<% } if(!confirm.equals(password)) { %>
                                <li><p>Ο κωδικός δεν επαληθεύτηκε σωστά</p></li>
                                <% } %>
						</ol>
					</ol>
				</div>
				<a href="http://ism.dmst.aueb.gr/ismgroup46/signup2.jsp" role="button" class="btn btn-warning">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> Back to the form
				</a>
		
		<% } %>
				
            </div>
	</body>
</html>