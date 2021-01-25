<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Σύνδεση Χρήστη</title>
    <%@ include file="header.jsp" %>
    <link href="css/homepage.css" rel="stylesheet">
    <link href="css/loginpage.css" rel="stylesheet">
    <link href="css/footer.css" rel="stylesheet">

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    


    <style>
      * {
          box-sizing: border-box
      }



      body {
          margin: 0;
          font-family: Arial, Helvetica, sans-serif;
      }
</style>


</head>
<body>
    <%@ include file="navigationmenu.jsp" %>

      <h1 style="color:black; text-align: center; font-size:36px;"><b>Σύνδεση</b></h1>
      <p style="color:black; text-align: center; font-size:20px;"><b>Αν δεν έχετε λογαριασμό Who Let The Dogs Out </b><a style="color:white;" href="http://ism.dmst.aueb.gr/ismgroup46/signup.jsp"><b>εγγραφείτε εδω.</b></a></p>

      
    <form method="post" action="<%=request.getContextPath() %>/loginController.jsp">
        <div style="align-items:center;" class="container">
          <label style="color: black; align-items: center;" for="uname"><b>Username</b></label>
          <input type="text" placeholder="Enter Username" name="username" required>
      
          <label style="color: black;" for="psw"><b>Password</b></label>
          <input type="password" placeholder="Enter Password" name="psw" required>
      
            <button style="color: white;" type="submit"><a style="color: white;">Login</a></button>

          <label style="color: white;">
            <input style="color: white;" type="checkbox" checked="checked" name="remember"> Remember me
          </label>
        </div>
        <div class="container">
          <span style="color: white;" class="psw">Forgot <a style="color:black" href="">password?</a></span>
        </div>
    </form>
    <%@ include file="footer.jsp" %>
  </body>

</html>