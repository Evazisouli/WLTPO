<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="ismgroup46.*, java.util.List" %>
        <%
LostpetService lostpetService = new LostpetService();
List<Lostpet> lostpets = lostpetService.showLostpets();
%>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <title>Αναζήτηση και Εύρεση Κατοικιδίου</title>

                <link href="css/homepage.css" rel="stylesheet">
                <%@ include file="header.jsp" %>

                    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
                    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

                    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
                    <style>
                        /* Make the image fully responsive */
                        
                        .carousel-inner img {
                            width: 100%;
                            height: 100%;
                        }
                        
                        body {
                            margin: 0;
                            font-family: Arial, Helvetica, sans-serif;
                            font-size: large;
                        }
                        
                        h1 {
                            text-align: center;
                        }
                        
                        h3 {
                            text-align: center;
                        }
                        
                        #imagecont {
                            position: relative;
                            width: 75%;
                        }
                        
                        .image {
                            opacity: 1;
                            display: block;
                            width: 75%;
                            height: auto;
                            transition: .5s ease;
                            backface-visibility: hidden;
                        }
                        
                        .middle {
                            transition: .5s ease;
                            opacity: 0;
                            position: absolute;
                            top: 50%;
                            left: 50%;
                            transform: translate(-50%, -50%);
                            -ms-transform: translate(-50%, -50%)
                        }
                        
                        #imagecont:hover .image {
                            opacity: 0.3;
                        }
                        
                        #imagecont:hover .middle {
                            opacity: 1;
                        }
                        
                        #btndon {
                            background-color: orangered;
                            color: white;
                            font-size: 16px;
                            padding: 16px 32px;
                            border-radius: 16px;
                        }
                        
                        #btnfil {
                            background-color: orangered;
                            color: white;
                            font-size: 16px;
                            padding: 8px 16px;
                            border-radius: 16px;
                        }
                        
                        #btnfil:hover {
                            background-color: whitesmoke;
                            color: orangered;
                            border-radius: 16px;
                        }
                        
                        .dropbtn {
                            background-color: orangered;
                            color: white;
                            padding: 12px;
                            font-size: 12px;
                            border-radius: 16px;
                            cursor: pointer;
                        }
                        
                        .dropbtn:hover {
                            background-color: whitesmoke;
                            color: #ff5405;
                            border-radius: 16px;
                        }
                        
                        #myInput {
                            box-sizing: border-box;
                            background-image: url('searchicon.png');
                            background-position: 14px 12px;
                            background-repeat: no-repeat;
                            font-size: 16px;
                            padding: 14px 20px 12px 45px;
                            border-radius: 16px;
                            border-bottom: 1px solid #ddd;
                        }
                        
                        #myInput:focus {
                            outline: 3px solid #ddd;
                        }
                        
                        .dropdown {
                            position: relative;
                            display: inline-block;
                        }
                        
                        .dropdown-content {
                            display: none;
                            position: absolute;
                            background-color: #f6f6f6;
                            min-width: 230px;
                            overflow: auto;
                            border: 1px solid #ddd;
                            z-index: 1;
                        }
                        
                        .dropdown-content a {
                            color: black;
                            padding: 12px 16px;
                            text-decoration: none;
                            display: block;
                        }
                        
                        .dropdown a:hover {
                            background-color: #ddd;
                        }
                        
                        .show {
                            display: block;
                        }
                        
                        form.example input[type=text] {
                            padding: 10px;
                            font-size: 17px;
                            border: 1px solid orangered;
                            float: left;
                            width: 80%;
                            background: #f1f1f1;
                        }
                        
                        form.example button {
                            float: left;
                            width: 20%;
                            padding: 10px;
                            background: orangered;
                            color: white;
                            font-size: 17px;
                            border: 1px solid orangered;
                            border-left: none;
                            cursor: pointer;
                        }
                        
                        form.example button:hover {
                            background: white;
                            color: #ff5405;
                        }
                        
                        form.example::after {
                            content: "";
                            clear: both;
                            display: table;
                        }
                        
                        .row {
                            margin-left: 1px;
                        }
                        
                        .column {
                            float: left;
                            width: 50%;
                            margin-bottom: 16px;
                            padding-left: 8px;
                            padding-right: 4px;
                        }
                    </style>




            </head>

            <body>
                <%@ include file="navigationmenu.jsp" %>

                    <div class="container-fluid">
                        <h1 class="large-font" style="color:orangered; margin-top: 3%;" id="headt"><span style="font-size:36px"><strong>Αναζήτηση & Εύρεση Κατοικιδίων</strong></span></h1>

                        <p style="color: orangered; margin-top: 2%;"><span style="font-size:30px">Αναζητείτε το χαμένο κατοικίδιό σας ή βρήκατε ένα ασυνόδευτο κατοικίδιο;</span>
                            <br> Εδώ μπορείτε να αναζητήσετε και να αναρτήσετε χαμένα κατοικίδια.
                        </p>

                        <div class="row" style="margin-top: 1%;">
                            <div class="col-6">
                                <form class="example" style="max-width:300px; margin-top: 2%;">
                                    <input type="text" id="myFilter" placeholder="Αναζήτηση Κατοικιδίου.." onkeyup="myFunction()" name="search2">
                                    <button type="submit"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                            <div class="col-3"></div>
                            <div class="col-3" style="margin-top: 1%">
                                <button class="btn" id="btnfil"><i class="fa fa-filter"></i></button>
                                <button class="btn" id="btnfil" onclick="window.location.href='upload.jsp';"><i class="fa fa-plus"></i> Δημιουργία Αγγελίας</button>
                            </div>
                        </div>




                    </div>

                    <div id="myItems">
                        <div class="container" style="margin-top: 2%;">
                            <div class="row">

                                <%
                    for (Lostpet lostp: lostpets){
                    %>
                                    <div class="column">
                                        <div class="card" style="width:400px">

                                            <img class="card-img-top" src="images/<%=lostp.getImage()%>.png" alt="Card image">
                                            <div class="card-body">
                                                <h2 class="card-title" style="color: orangered;"><span style="font-size:24px"><strong><%=lostp.getName()%></strong></span></h2>
                                                <p class="card-text">
                                                    <%=lostp.getDescription()%>
                                                </p>
                                                <p class="card-text"><span style="font-size:14px"><i class="fas fa-location-arrow" style="color: orangered;"></i><b> <%=lostp.getCity()%>, <%=lostp.getArea()%></b>
                                    <p class="card-text"><span style="font-size:14px"><i class="fa fa-map-marker" style="color: orangered;"></i><b> <%=lostp.getStreet()%></b>
                                <p class="card-text"><span style="font-size:14px"><i class="fas fa-calendar-day" style="color: orangered;"></i><b> <%=lostp.getDate()%> </b>
                                <p class="card-text"><span style="font-size:14px"><i class="fas fa-phone-alt" style="color: orangered;"></i><b> <%=lostp.getPhone()%> </b>
                             
                            </div>
                        </div>
                      </div>
                    <%
                    }
                    %>

                </div>
            </div>
    </div>

    <script>
        function myFunction() {
            var input, filter, cards, cardContainer, h2, title, i;
            input = document.getElementById("myFilter");
            filter = input.value.toUpperCase();
            cardContainer = document.getElementById("myItems");
            cards = cardContainer.getElementsByClassName("card");
            for (i = 0; i < cards.length; i++) {
                title = cards[i].querySelector(".card-body h2.card-title");
                if (title.innerText.toUpperCase().indexOf(filter) > -1) {
                    cards[i].style.display = "";
                } else {
                    cards[i].style.display = "none";
                }
            }
        }
    </script>

</body>

</html>