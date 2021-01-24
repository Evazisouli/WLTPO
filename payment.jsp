<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="header.jsp" %>
	<title>Πληρωμή</title>
  <link rel="stylesheet" href="css/payment.css">
  <link href="css/homepage.css" rel="stylesheet">

</head>
<style>
    body {
      background-image: url('images/leaves.jpg');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
    }
    </style>
<body>
  <%@ include file="navigationmenu.jsp" %>
	

<div class="wrapper">
  <div class="payment">
    <div class="payment-logo">
      <p>p</p>
    </div>
    
    
    <h2>Δωρεά - Πληρωμή</h2>
    <div class="form">
      <div class="card space icon-relative">
        <label class="label">Κωδικός τραπέζης φιλοζωικής:</label>
        <input type="text" class="input" placeholder="Coding Market">
        <i class="fas fa-user"></i>
      </div>
      <div class="card space icon-relative">
        <label class="label">Ο κωδικός τραπέζης μου:</label>
        <input type="text" class="input" data-mask="0000 0000 0000 0000" placeholder="Card Number">
        <i class="far fa-credit-card"></i>
      </div>
      <div class="card-grp space">
        <div class="card-item icon-relative">
          <label class="label">Ημερομηνία λήξης:</label>
          <input type="text" name="expiry-data" class="input" data-mask="00 / 00"  placeholder="00 / 00">
          <i class="far fa-calendar-alt"></i>
        </div>
        <div class="card-item icon-relative">
          <label class="label">CVC:</label>
          <input type="text" class="input" data-mask="000" placeholder="000">
          <i class="fas fa-lock"></i>
        </div>
      </div>
        
      <div class="btn">
        Πληρωμή
      </div> 
      
    </div>
  </div>
</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>

</body>
</html>

