<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	
    <title>Ανάγκες της Φιλοζωικής μου</title>
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
        font-size: 17px;
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
        <img src="images/kout.jpg" height="75"alt="Shelter">
        <h1>Φιλοζωική Χαλανδρίου</h1>
        <button class="btns2">Επεξεργασία προφίλ</button>

    </div>
    <div class="right">
        <div class="topnav3">
            <a href="myshelterprofile.html">Πληροφορίες</a>
            <a class="active" href="myshelterneeds.html">Ανάγκες</a>
            <a href="#contact">Αιτήσεις υιοθεσίας</a>
            <a href="#contact">Οι δωρεές μου</a>
            <a href="#contact">Oι δημοσιεύσεις μου</a>
          </div>
          <br><br>
        <div class = "need">
            Όποιος θέλει μπορεί να βοηθήσει, ώστε να δημιουργηθεί ένα δίκτυο φροντίδας σε όλο το Χαλάνδρι,
            το οποίο θα φροντίζει ανάλογα τα αδέσποτα του δήμου μας. Χρειαζόμαστε την έμπρακτη αγάπη σας,
            στα πλαίσια πάντα των δυνατοτήτων σας. Επειδή κάθε συνεισφορά σας ακόμα και μικρή είναι πολύτιμη.
            Μπορείτε να μας βοηθήσετε με κάποιον από τους ακόλουθους τρόπους:
          <ul> 
          <li>Υιοθεσία ενός κατοικίδιου (σκύλου ή γάτας), με τη δική μας καθοδήγηση σε ό,τι χρειαστεί. </li>
          <li>Αναδοχή (οικονομική και συναισθηματική) ενός σκύλου που φιλοξενείται προσωρινά ή μόνιμα σε πανσιόν. </li>  
          <li>Προσωρινή φιλοξενία αδέσποτων στο χώρο σας (υγιή ή υπό ανάρρωση) μέχρι να βρεθεί κάποιος να τα υιοθετήσει. </li>
          <li>Συνεισφορά (ανάλογα με τις εκάστοτε ανάγκες) - σε υλικό: σπιτάκια, λουράκια, αντιπαρασιτικά περιλαίμια, </li>
          <li>Συνεισφορά σε φάρμακα: Frontline, Drontal, Augmentin, Amoxil, Vibramycin, Zylapour, Fungoral, Surolan, Oridermyl, κ. ά. </li>  
          <li>Δωρεά μικρο-αντικειμένων σε καλή κατάσταση για τα μηνιαία μπαζαάρ (κοσμήματα, αξεσουάρ, τσαντάκια, διακοσμητικά,
               χρηστικά αντικείμενα, υαλικά, κεριά, λούτρινα, CD, βιβλία, κ.λπ.). </li>  
          <li>Αγορά αντικειμένων από τα bazaar μας, που πραγματοποιούνται κάθε μήνα (πλην Αυγούστου) στο πεζόδρομο Χαϊμαντά. </li>
          </ul>
        </div>
    </div>
    </div>
</body>
</html>