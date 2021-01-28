<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>


    <%@ page import="ismgroup46.*, java.util.List" %>
        <% 
    ShelterService shelterservice = new ShelterService();
    List<Shelter> sh =  shelterservice.showShelters();
    
%>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <title>Επιλογή Φιλοζωικής & Δωρεά</title>
                <link href="css/homepage.css" rel="stylesheet">
                <link href="css/footer.css" rel="stylesheet">
                <link href="css/donation.css" rel="stylesheet">
                <%@ include file="header.jsp" %>



                    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
                    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                    <script src='https://kit.fontawesome.com/a076d05399.js'></script>

            </head>

            <body>
                <%@ include file="navigationmenu.jsp" %>

                    <div class="container-fluid">
                        <h1 class="large-font" style="color:#ff5405;; margin-top: 2%;" id="headt"><b>Δωρεές</b></h1>
                        <p> <span style="font-size:36px">Κάθε δωρεά μετράει!</span> <br> Επιλέξτε τη φιλοζωική της αρεσκείας σας και συνδράμετε ενεργά στη συνέχιση του έργου της.
                        </p>

                        <div class="ro" style="margin-top: 2%;">
                            <div class="col-6">
                                <form class="example" style="max-width:300px; margin-top: 2%;">
                                    <input type="text" id="myFilter" placeholder="Αναζήτηση Φιλοζωικής.." onkeyup="myFunction()" name="search2">
                                    <button type="submit"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                            <div class="col-4"></div>
                            <div class="col-2" style="margin-top: 1%">
                                <button class="button" id="btnfil"><i class="fa fa-filter"></i> Προσθήκη Φίλτρου</button>
                            </div>
                        </div>

                    </div>





                    <div class="container-fluid" id="mainco">

                        <ul class="list-styled">
                            <% 	int id = 1;
            for(Shelter shelter: sh) { %>
                                <li class="media my-4">
                                    <div class="container-fluid" id="imagecont">
                                        <img class="image" src="images/<%=shelter.getImage()%>.jpg" alt="Avatar" class="image" style="width:100%">
                                        <div class="middle">
                                            <button class="btn" id="btndon" onclick="window.location.href='payment.jsp';">Δωρεά <i class="fa fa-donate"></i></button>
                                        </div>
                                    </div>
                                    <div class="media-body">
                                        <h1 class="mt-0 mb-1" style="color: #ff5405;"><strong><%=shelter.getName()%> </strong><button class="butt1" onclick="window.location.href='payment.jsp';"><i class="fa fa-donate"></i></button></h1>
                                        <p>
                                            <%=shelter.getDescription()%>
                                        </p>

                                        <p class="list-group-item-text"><i class="fa fa-location-arrow inf" style="color: #ff5405;"></i>
                                            <%=shelter.getCity()%>
                                        </p>
                                        <p class="list-group-item-text"><i class="fas fa-map-marked-alt" style="color: #ff5405;"></i>
                                            <%=shelter.getArea()%>
                                        </p>
                                        <p class="list-group-item-text"><i class="fas fa-map-marker-alt" style="color: #ff5405;"></i>
                                            <%=shelter.getAddress()%>
                                        </p>
                                        <p class="list-group-item-text"><i class="fas fa-phone-alt" style="color: #ff5405;"></i>
                                            <%=shelter.getPhone()%>
                                        </p>
                                        <p class="list-group-item-text"><i class="fas fa-at" style="color: #ff5405;"></i>
                                            <%=shelter.getMail()%>
                                        </p>
                                        <p class="list-group-item-text"><i class="fab fa-facebook" style="color: #ff5405;"></i>
                                            <%=shelter.getFb()%>
                                        </p>
                                        <% id = id + 1; %>

                                    </div>
                                </li>
                                <% } %>
                        </ul>
                    </div>
                    <%@ include file = "footer.jsp" %>
            </body>

            </html>