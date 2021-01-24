<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Προσωπικό προφίλ</title>
    <%@ include file="header.jsp" %>
    <link rel="stylesheet" href="css/profile.css">
    <link rel="stylesheet" href="css/homepage.css">
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
</head>
<body>
    <%@ include file="navigationmenu.jsp" %>


<div class="wrapper">
    <div class="left">
        <img src="images/pic.jpg" height="75" alt="user">
        <h1>maria mar</h1>
        <button class="btns2">Επεξεργασία προφίλ</button>
    </div>
    <div class="right">
        <div class="topnav2">
            <a class="active">Πληροφορίες επικοινωνίας</a>
            <a href="#">Οι υιοθεσίες μου</a>
            <a href="#">Οι δημοσιεύσεις μου</a>
            </div>
                  <br><br>
        <div class="info">

            <div class="info_data">
                <div class="data">
                    <p><i class="fa fa-user inf"></i> Maria Tzianakaki</p>
                    <p><i class="fa fa-location-arrow inf"></i> Athens</p>
                    <p><i class="fa fa-address-card inf"></i> Vironas</p>
                    <p><i class="fa fa-envelope inf"></i> mariatznk25@gmail.com</p>
                    <p><i class="fa fa-phone inf"></i> 6955584008</p>
                    <p><i class="fa fa-comment inf"></i>   <i class="fa fa-comment inf"></i>   <i class="fa fa-comment inf"></i></p>
                    <p><i class="fa fa-comment-o inf"></i> Συμμετέχω στην Εθελοντική Δράση Κτηνιάτρων Ελλάδος (Ε.Δ.Κ.Ε) 
                    το οποίο είναι ένα ανεξάρτητο μη κερδοσκοπικό σωματείο που προσφέρει κτηνιατρική βοήθεια σε αδέσποτα ή άγρια ζώα που έχουν
                    ανάγκη περίθαλψης ή/και είναι αποκλεισμένα από κτηνιατρική μέριμνα.</p>
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



                
