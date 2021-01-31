<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.UUID"%>

<%


String id = UUID.randomUUID().toString();
String sex = request.getParameter("sex"); 
String kind = request.getParameter("kind");
String size = request.getParameter("size");
String name = request.getParameter("petname");
String age = request.getParameter("age");
String city = request.getParameter("city");
String area = request.getParameter("area");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
String desc = request.getParameter("description");
String microchipid = request.getParameter("microchipid");
String health_card = request.getParameter("health_card");
String health_probs = request.getParameter("health_probs");
String sterilisation = request.getParameter("sterilisation");
String contract = request.getParameter("contract");
String kids = request.getParameter("kids");
String other_pets = request.getParameter("other_pets");


// convert from ISO-8859-1 (latin) to UTF-8 so as to support Greek characters
sex = new String(sex.getBytes("ISO-8859-1"), "UTF-8");
kind = new String(kind.getBytes("ISO-8859-1"), "UTF-8");
size = new String(size.getBytes("ISO-8859-1"), "UTF-8");
name = new String(name.getBytes("ISO-8859-1"), "UTF-8");
age = new String(age.getBytes("ISO-8859-1"), "UTF-8");
city = new String(city.getBytes("ISO-8859-1"), "UTF-8");
area = new String(area.getBytes("ISO-8859-1"), "UTF-8");
phone = new String(phone.getBytes("ISO-8859-1"), "UTF-8");
desc = new String(desc.getBytes("ISO-8859-1"), "UTF-8");
microchipid = new String(microchipid.getBytes("ISO-8859-1"), "UTF-8");
health_card = new String(health_card.getBytes("ISO-8859-1"), "UTF-8");
health_probs = new String(health_probs.getBytes("ISO-8859-1"), "UTF-8");
sterilisation = new String(sterilisation.getBytes("ISO-8859-1"), "UTF-8");
contract = new String(contract.getBytes("ISO-8859-1"), "UTF-8");
kids = new String(kids.getBytes("ISO-8859-1"), "UTF-8");
other_pets = new String(other_pets.getBytes("ISO-8859-1"), "UTF-8");

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
			if(name.length() >= 2) {
               UploadService upload = new UploadService();
               upload.register(new Upload(id, sex, kind, size, name, age, city, area, phone, email, desc, microchipid, health_card, health_probs, sterilisation, contract, kids, other_pets));
            
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