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
		        <link href="css/footer.css" rel="stylesheet">
                <link href="css/lostnfound.css" rel="stylesheet">
                <%@ include file="header.jsp" %>
		
                    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
                    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

                    <script src='https://kit.fontawesome.com/a076d05399.js'></script>




            </head>

            <body>
                <%@ include file="navigationmenu.jsp" %>

                    <div class="container-fluid">
                        <h1 class="large-font" style="color: #ff5405; margin-top: 3%;" id="headt"><span style="font-size:36px"><strong>Αναζήτηση & Εύρεση Κατοικιδίων</strong></span></h1>

                        <p style="color: #ff5405; margin-top: 2%;"><span style="font-size:30px">Αναζητείτε το χαμένο κατοικίδιό σας ή βρήκατε ένα ασυνόδευτο κατοικίδιο;</span>
                            <br> Εδώ μπορείτε να αναζητήσετε και να αναρτήσετε χαμένα κατοικίδια.
                        </p>

                        <div class="ro" style="margin-top: 1%;">
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

                                            <img class="card-img-top" src="images/<%=lostp.getImage()%>.png" alt="Card image" style="width:100%">
                                            <div class="card-body">
                                                <h2 class="card-title" style="color: #ff5405;"><span style="font-size:24px"><strong><%=lostp.getName()%></strong></span></h2>
                                                <p class="card-text">
                                                    <%=lostp.getDescription()%>
                                                </p>
                                                <p class="card-text"><span style="font-size:14px"><i class="fas fa-location-arrow" style="color: #ff5405;"></i><b> <%=lostp.getCity()%>, <%=lostp.getArea()%></b>
                                    <p class="card-text"><span style="font-size:14px"><i class="fa fa-map-marker" style="color: #ff5405;"></i><b> <%=lostp.getStreet()%></b>
                                <p class="card-text"><span style="font-size:14px"><i class="fas fa-calendar-day" style="color: #ff5405;"></i><b> <%=lostp.getDate()%> </b>
                                <p class="card-text"><span style="font-size:14px"><i class="fas fa-phone-alt" style="color: #ff5405;"></i><b> <%=lostp.getPhone()%> </b>
                             
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
<%@ include file="footer.jsp" %>

</body>

</html>