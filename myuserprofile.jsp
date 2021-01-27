<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="ismgroup46.*" %>

<%
String usern = request.getParameter("id");
PetloverService serv = new PetloverService();
Petlover lov = serv.findPetlover(usern);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Προσωπικό προφίλ</title>
    <%@ include file="header.jsp" %>
    <link rel="stylesheet" href="css/profile.css">
    <link rel="stylesheet" href="css/homepage.css">
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
</head>
<style>
    .topnav3 {
        overflow: hidden;
        background-color: #ffff;
      }
      
      .topnav3 a {
        float: left;
        color: #000000;
        text-align: center;
        padding: 18px 13px;
        text-decoration: none;
        font-size: 16px;
      }
      
      .topnav3 a:hover {
        background-color: #ddd;
        color: black;
      }
      
      .topnav3 a.active {
        background-color: #ff5405;
        color: white;
      }
      </style>
<body>
    <%@ include file="navigationmenu.jsp" %>


<div class="wrapper">
    <div class="left">
        <img class='illustration' src="images/<%=lov.getImage()%>.jpg" alt="User">
        <h1><%= lov.getUsername() %></h1>
        <button class="btns2">Επεξεργασία προφίλ</button>
    </div>
    <div class="right">
        <div class="topnav3">
            <a class="active">Πληροφορίες επικοινωνίας</a>
            <a href="#">Οι υιοθεσίες μου</a>
            <a href="#">Οι δημοσιεύσεις μου</a>
            </div>
                  <br><br>
        <div class="info">

            <div class="info_data">
                <div class="data">
                    <p><i class="fa fa-user inf"></i> <%= lov.getName() %> <%= lov.getSurname() %></p>
                    <p><i class="fa fa-location-arrow inf"></i> <%= lov.getCity() %></p>
                    <p><i class="fa fa-address-card inf"></i> <%= lov.getArea() %></p>
                    <p><i class="fa fa-envelope inf"></i> <%= lov.getMail() %></p>
                    <p><i class="fa fa-phone inf"></i> <%= lov.getPhone() %></p>
                    <p><i class="fa fa-comment inf"></i>   <i class="fa fa-comment inf"></i>   <i class="fa fa-comment inf"></i></p>
                    <p><%= lov.getDescription() %></p>
                </div>
            </div>
        </div>
        <div class="social_media">
            <ul>
              <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
              <li><a href="#"><i class="fab fa-twitter"></i></a></li>
              <li><a href="#"><i class="fab fa-instagram"></i></a></li>
          </ul>
        </div>
    </div>
</div>

</body>
<script>
    function myFunction() {
        var x = document.getElementById("mytopnav");
        if (x.className === "topnav") {
            x.className += " responsive";
        } else {
            x.className = "topnav";
        }
    }
</script>

</html>



                
