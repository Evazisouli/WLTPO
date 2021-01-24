<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Εγγραφή</title>
    <%@ include file="header.jsp" %>
    <link href="css/signup.css" rel="stylesheet">
    <link href="css/homepage.css" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
      * {
          box-sizing: border-box
      }

      @media (min-width:1200px) {
          .container {
              width: 100%;
          }
      }

      @media (min-width:992px) {
          .container {
              width: 100%;
          }
      }

      @media (min-width:768px) {
          .container {
              width: 100%;
          }
      }

      .row {
          padding-top: 10px;
          margin-left: 0px;
          margin-right: 0px;
      }

      .column {
          float: left;
          width: 25%;
          margin-bottom: 16px;
          padding-left: 8px;
          padding-right: 4px;
      }

      .card {
          box-shadow: 0 4px 8px 0 orange;
          height:600px;
      }

      .container {
          padding: 16px 16px;
      }

      .container::after,
      .row::after {
          content: "";
          clear: both;
          display: table;
      }

      .title {
          color: grey;
      }

      .button {
          border: none;
          color: white;
          padding: 14px 28px;
          font-size: 20px;
          cursor: pointer;
          background-color: #ff5405;
          text-align: center;
          display: inline-block;
          margin: 4px 2px;
          cursor: pointer;
          border-radius: 16px;
      }

      .button:hover {
          background-color: #555;
      }


      body {
          margin: 0;
          font-family: Arial, Helvetica, sans-serif;
      }

  </style>


</head>
<body>
    <%@ include file="navigationmenu.jsp" %>


      <h1 style="color:white; text-align: center; font-size:36px;"><b>Εγγραφή</b></h1>
      <p style="color:white; text-align: center; font-size:20px;"><b>Αν έχετε ήδη λογαριασμό Who Let The Dogs Out </b><a style="color:black;" href="http://ism.dmst.aueb.gr/ismgroup46/loginpage.jsp"><b>συνδεθείτε εδω.</b></a></p>
      <p style="color:white; text-align: center; font-size:20px;"><b>Δημιουργήστε λογαριασμό Who Let The Dogs Out για να έχετε πρόσβαση στην πλατφόρμα που ενώνει την φιλοζωική κοινότητα!</b></p> 
      <p style="color:white; text-align: center; font-size:20px;"><b>Επιλέξτε ποια εγγραφή θα πραγματοποιήσετε ανάλογα με το τι χρήστης είστε:</b></p>     
     
      <div="container">
        <div class="center">
            <button style="color: white;" type="submit"><a style="color: white; font-size:large;" href="http://ism.dmst.aueb.gr/ismgroup46/signup1.jsp">Είμαι Φιλόζωος</a></button>
        </div>
      </div>

      <div="container2">
        <div class="center2">
            <button style="color: white;" type="submit"><a style="color: white; font-size:large" href="http://ism.dmst.aueb.gr/ismgroup46/signup2.jsp">Είμαστε Φιλοζωική Οργάνωση</a></button>
        </div>
      </div>
      

</body>

</html>