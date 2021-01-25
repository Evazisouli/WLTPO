<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="ismgroup46.*" %>

        <%
String usern2 = request.getParameter("id");
ShelterService servi = new ShelterService();
Shelter sh = servi.findShelter(usern2);
%>

            <!DOCTYPE html>
            <html lang="en">

            <head>

                <title>Το προφίλ μου</title>
                <%@ include file="header.jsp" %>
                    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
                    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
                            <img src="images/<%=sh.getUsername()%>.jpg" height="75" alt="Shelter">
                            <h1>
                                <%= sh.getUsername() %>
                            </h1>
                            <button class="btns2">Επεξεργασία προφίλ</button>

                        </div>
                        <div class="right">
                            <div class="topnav3">
                                <a class="active" href="#home">Πληροφορίες</a>
                                <a href="myshelterneeds.jsp">Ανάγκες</a>
                                <a href="#contact">Αιτήσεις υιοθεσίας</a>
                                <a href="#contact">Οι δωρεές μου</a>
                                <a href="#contact">Oι δημοσιεύσεις μου</a>
                            </div>
                            <br><br>


                            <div class="info">
                                <div class="info_data">
                                    <div class="data">
                                        <p><i class="fa fa-user-circle inf"></i>
                                            <%= sh.getName() %>
                                        </p>
                                        <p><i class="fa fa-location-arrow inf"></i>
                                            <%= sh.getCity() %>
                                        </p>
                                        <p><i class="fa fa-map-marker inf"></i>
                                            <%= sh.getArea() %>
                                        </p>
                                        <p><i class="fa fa-address-book inf"></i>
                                            <%= sh.getAddress() %>
                                        </p>
                                        <p><i class="fa fa-envelope-open inf"></i>
                                            <%= sh.getPostal_code() %>
                                        </p>
                                        <p><i class="fa fa-user inf"></i>
                                            <%= sh.getContact() %>
                                        </p>
                                        <p><i class="fa fa-envelope inf"></i>
                                            <%= sh.getMail() %>
                                        </p>
                                        <p><i class="fa fa-phone inf"></i>
                                            <%= sh.getPhone() %>
                                        </p>
                                        <p><i class="fa fa-bullhorn inf"></i> <i class="fa fa-bullhorn inf"></i> <i class="fa fa-bullhorn inf"></i></p>
                                        <p>
                                            <%= sh.getDescription() %>
                                        </p>
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

            </html>