<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ανάρτηση</title>
    <%@ include file="header.jsp" %>
    <link href="css/upload.css" rel="stylesheet">
    <link href="css/homepage.css" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    


    <style>
     * {
            box-sizing: border-box
        }

        img {
            width: 100%;
            height: 250px;
        }

        h2 {
            color: orangered;
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
            height: 520px;
        }

        .large-font {
            font-size: 36px;
        }

        .con {
            padding-bottom: 20px;
            padding-left: 20px;
            padding-top: 40px;
            color:#ff5405;
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
            color: orange;
        }

        .button {
            border: none;
            color: white;
            padding: 12px 16px;
            font-size: 16px;
            cursor: pointer;
            background-color: #ff5405;
            text-align: center;
            display: inline-block;
            margin: 16px 18px;
            cursor: pointer;
            border-radius: 8px;
        }

        .button:hover {
            background-color: orangered;
        }


        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            color: black;
        }


</style>

</head>
<body>
    <%@ include file="navigationmenu.jsp" %>

    <h1 style="color:black; text-align: center; font-size:36px;"><b></b></h1>


      <h1 style="color:black; text-align: center; font-size:36px;"><b>Ανάρτησε αγγελία</b></h1>
      <p style="color:black; text-align: center; font-size:20px;"><b>Αν βρήκες κάποιο χαμένο ζώο ή ψάχνεις κάποιο κατοικίδιο που έχασες, συμπλήρωσε τα στοιχεία της φόρμας και γνωστοποίησε το στην κοινότητα του Who Let The Dogs Out!</b></p>     

      

         <form action="/action_page.php">  
            <div class=selector>
            <label for="cars">Επέλεξε ζώο</label>

            <select name="cars" id="kind">
              <option value="dog">Σκύλος</option>
              <option value="cat">Γάτα</option>
              <option value="bird">Πουλί</option>
              <option value="erpeto">Ερπετό</option>
            </select> 
        </div>
            <form action="/action_page.php">  
                <div class=selector>
                <label for="lostfound">Χάθηκε/Βρέθηκε:</label>
            
                <select name="lostfound" id="lostfound">
                  <option value="yes">Χάθηκε</option>
                  <option value="no">Βρέθηκε</option>
                </select> 
            </div>
            
            <div class="form-group">
                <label style="color:black" for="email"><b>Όνομα:</b></label>
                <div class="lol">
                <input type="name" placeholder="Εισάγετε Όνομα κατοικιδίου..." class="form-control" id="name">
                </div>
              </div>
            <div class="form-group">
                    <label style="color:black" for="email"><b>Πόλη* (Υποχρεωτικό):</b></label>
                    <div class="lol">
                    <input type="name" placeholder="Εισάγετε Πόλη..." class="form-control" id="city">
                    </div>
                  </div>
                  <div class="form-group">
                    <label style="color:black" for="email"><b>Περιοχή που χάθηκε/βρέθηκε* (Υποχρεωτικό):</b></label>
                    <div class="lol">
                    <input type="name" placeholder="Εισάγετε περιοχή που χάθηκε/βρέθηκε..." class="form-control" id="area">
                    </div>
                  </div>
          </div>
           <div class="form-group">
            <label style="color:black" for="email">Διεύθυνση που χάθηκε/βρέθηκε:</label>
            <div class="lol">
            <input type="name" placeholder="Εισάγετε διεύθυνση που χάθηκε/βρέθηκε..." class="form-control" id="street">
            </div>
          </div>
           <div class="form-group">
             <label style="color:black" for="email"><b>Τηλέφωνο Επικοινωνίας* (Υποχρεωτικό):</b></label>
             <div class="lol">
             <input type="name" placeholder="Εισάγετε τηλέφωνο επικοινωνίας..." class="form-control" id="number">
             </div>
           </div>
           <div class="form-group">
            <label style="color:black" for="email"><b>Περιγραφή* (Υποχρεωτική):</b></label>
            <div class="lol">
            <input type="text"placeholder="Λεπτομέρειες σχετικές με την αγγελία..." class="form-control" id="description">
            </div>
          </div>
          <form action="/action_page.php">
            <div class=lol>
            <input type="date" id="birthday" name="birthday">
            </div>
          </form>          
           </div>
           </div>
         </form>
         <div class="lol">
         <form action="/action_page.php">
            <div class="form-group">
            <label style="font-size:20px;" for="img">Επιλέξτε εικόνα*</label>
            <input type="file" id="img" name="img" accept="image/*">
        </div>
            </div>
          </form>
   
   
   <div class="bt">
           <button type="submit"><a style="color: white;" href="#">Upload</a></button>
     </div>
      
     <%@ include file="footer.jsp" %>
</body>

</html>