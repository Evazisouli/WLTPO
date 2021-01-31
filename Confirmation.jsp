<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="ismgroup46.*"%>
<%@ page import="java.util.UUID"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.util.Calendar"%>


<%
if ((session.getAttribute("buttonadoption") == "no") && (session.getAttribute("pushbut") == "no")){
	
	%>
	<jsp:forward page = "ChooseActionAdoption.jsp"/>
	<%
} 
    

    session.setAttribute("request", "yes");
    String sid = (String)session.getAttribute("id");
    Petlover user = (Petlover)session.getAttribute("object");
    String x = UUID.randomUUID().toString();
    java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTimeInMillis());
    PetService petserv = new PetService();
    Pet pet = petserv.findPet(sid);
    AdoptionService ad = new AdoptionService();
    Adoption adoption = ad.findAdoption(pet.getIdadoption());
    RequestService userd = new RequestService();
    Request rq = new Request(x,date,user.getUsername(), adoption.getIdadoption());
    userd.createRequest(rq);
    String delRequest;
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
    
    <h1 style="color:black; text-align: center; font-size:36px;"><b>Το αίτημα υιοθεσίας σας καταγράφηκε!</b></h1>

    <p style="color:black; text-align: center; font-size:20px;"><b>Θα λάβετε την απάντηση στην ηλεκτρονική διεύθυνση <%= user.getMail() %>!</b></a></p>
    <p style="color:black; text-align: center; font-size:20px;"><b>Αριθμός Αιτήματος: <%= x %></b></a></p>
    <p style="color:black; text-align: center; font-size:20px;"><b>Ονοματεπώνυμο: <%= user.getName() %> <%= user.getSurname() %></b></a></p>
    
    <a href="<%=request.getContextPath() %>/ConfirmationController.jsp?delRequest=<%=rq.getidrequest()%>" class="submit" >
        <span aria-hidden="true"></span> Αναίρεση αιτήματος
    </a>
    
    <%@ include file="footer.jsp" %>
    </body>
    
    </html>



