<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
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
        <img src="images/kout.jpg" height="75"alt="Φιλοζωική Χαλανδρίου">
        <h1>Φιλοζωική Χαλανδρίου</h1>
        <button class="btns2">Επεξεργασία προφίλ</button>

    </div>
    <div class="right">
        <div class="topnav3">
            <a class="active" href="#home">Πληροφορίες</a>
            <a href="myshelterneeds.html">Ανάγκες</a>
            <a href="#contact">Αιτήσεις υιοθεσίας</a>
            <a href="#contact">Οι δωρεές μου</a>
            <a href="#contact">Oι δημοσιεύσεις μου</a>
          </div>
          <br><br>
          
        
        <div class="info">
            <div class="info_data">
                <div class="data">
                    <p><i class="fa fa-user-circle inf"></i> Φιλοζωική Χαλανδρίου</p>
                    <p><i class="fa fa-location-arrow inf"></i> Αθήνα</p>
                    <p><i class="fa fa-map-marker inf"></i>  Χαλάνδρι</p>
                    <p><i class="fa fa-address-book inf"></i> Κολοκοτρώνη 46</p>
                    <p><i class="fa fa-envelope-open inf"></i> 15232 </p>
                    <p><i class="fa fa-user inf"></i>  Μάριος Αλεξάνδρου</p>
                    <p><i class="fa fa-envelope inf"></i> filoizwwn@gmail.com</p>
                    <p><i class="fa fa-phone inf"></i> 6948234390</p>
                    <p><i class="fa fa-bullhorn inf"></i> <i class="fa fa-bullhorn inf"></i> <i class="fa fa-bullhorn inf"></i></p>
                    <p>Ο Σύλλογος Εθελοντών Φίλων των Ζώων Χαλανδρίου έχει στόχο να προσφέρει
                       μια ευκαιρία στα αδέσποτα σκυλιά και γάτες να ζήσουν με αξιοπρέπεια ανάμεσά μας.
                        Έτσι, επιδιώκουμε την περίθαλψη των αδέσποτων (από ασθένεια, τροχαίο, κακοποίηση),
                         τη στείρωση για έλεγχο του πληθυσμού τους και τέλος, την υιοθεσία τους.</p>
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