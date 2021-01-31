<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ανάρτηση Υιοθεσίας</title>
    <%@ include file="header.jsp" %>
    <link href="css/upload2.css" rel="stylesheet">
    <link href="css/homepage.css" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <style>
      * {
          box-sizing: border-box
      }



      body {
          margin: 0;
          font-family: Arial, Helvetica, sans-serif;
          color: white;
      }

      .containers {
            padding: 20px;
        }

        .contain {
            padding: 20px;
        }

</style>

</head>
<body>
  <%@ include file="navigationmenu.jsp" %>



      <h1 style="color:black; text-align: center; font-size:36px;"><b>Ανάρτησε αγγελία ζώου προς υιοθεσία!</b></h1>
      <p style="color:white; text-align: center; font-size:20px;"><b>Αν επιθυμείς να προσφέρεις το κατοικίδιο σου για υιοθεσία, ανέρτησε την αγγελία και επέλεξε ένα από τα μέλη της φιλοζωικής κοινότητας του Who Let The Pets Out που θα δηλώσει ενδιαφέρον για να υιοθετήσει το ζωάκι σου! Αν ψάχνεις εσύ ζώο για υιοθεσία, δές τις αγγελίες <a style="color:black;" href="adoption.html"><b>εδω.</b></a></b></p>     

     
     
      <form action="uploadController.jsp" method="POST">    
        <div class="form-group">
          <label style="color:black" for="text"><b>Φύλο κατοικίδιου* (Υποχρεωτικό):</b></label>
          <div class="lol">
          <input type="name" placeholder="Αρσενικο/Θηλυκό" class="form-control" name="sex">
          </div>
          <label style="color:black" for="text"><b>Ζώο* (Υποχρεωτικό):</b></label>
          <div class="lol">
          <input type="name" placeholder="Σκύλος/Γάτα" class="form-control" id="kind" required>
          </div>
            <label style="color:black" for="text"><b>Μέγεθος κατοικίδιου* (Μικρο<15kg) (Μεσαιο < 25kg) (Μεγαλο>25kg) </b> </label>
            <div class="lol">
            <input type="name" placeholder="Μικρό/Μεσαίο/Μεγάλο" class="form-control" id="petname" required>
            </div>
            <div class="form-group">
                <label style="color:black" for="age"><b>Ηλικία κατοικίδιου* (Υποχρεωτικό):</b></label>
                <div class="lol">
                <input type="text" placeholder="Εισάγετε την ηλικία του κατοικίδιου..." class="form-control" id="age" required>
                </div>
              </div>
                <label style="color:black" for="city"><b>Πόλη* (Υποχρεωτικό):</b></label>
                <div class="lol">
                <input type="text" placeholder="Εισάγετε πόλη.." class="form-control" id="city" required>
                </div>
                <label style="color:black" for="area"><b>Περιοχή που βρίσκεσαι* (Υποχρεωτικό):</b></label>
                <div class="lol">
                <input type="text" placeholder="Εισάγετε περιοχή.." class="form-control" id="area" required>
                </div>
      
         <label style="color:black" for="phone"><b>Τηλέφωνο Επικοινωνίας* (Υποχρεωτικό):</b></label>
         <div class="lol">
         <input type="text" placeholder="Εισάγετε τηλέφωνο.."  class="form-control" id="phone" required>
         </div>


        <label style="color:black" for="email"><b>Email* (Υποχρεωτικό):</b></label>
        <div class="lol">
        <input type="text" placeholder="Εισάγετε email.."  class="form-control" id="email" required>
      </div>
        <label style="color:black" for="text"><b>Περιγραφή* (Υποχρεωτική):</b></label>
        <div class="lol">
        <input type="name" placeholder="Σύντομη περιγραφή..." class="form-control" id="description" required>
        </div>
        <label style="color:black" for="number"><b>Αριθμός Microchip:</b></label>
        <div class="lol">
        <input type="text" placeholder="Εισάγετε αριθμό Microchip.."  class="form-control" id="=microchipid" required>
        </div>
        <label style="color:black" for="text"><b>Βιβλιάριο Υγείας:</b></label>
        <div class="lol">
        <input type="text" placeholder="Έχει βιβλιάριο; (Ναι/Οχι)"  class="form-control" id="health_card" required>
        </div>
        <label style="color:black" for="text"><b>Μόνιμα Προβλήματα Υγείας:</b></label>
        <div class="lol">
        <input type="text" placeholder="Έχει προβλήματα υγείας; (Ναι/Οχι)"  class="form-control" id="health_probs" required>
        </div>
        <label style="color:black" for="text"><b>Στειρωμένο:</b></label>
        <div class="lol">
        <input type="text" placeholder="Είναι στειρωμένο; (Ναι/Οχι)"  class="form-control" id="sterilisation" required>
        </div>
        <label style="color:black" for="text"><b>Υποχρεωτικό Συμβόλαιο Υιοθεσίας:</b></label>
        <div class="lol">
        <input type="text" placeholder="Υπάρχει συμβόλαιο; (Ναι/Οχι)"  class="form-control" id="contract" required>
        </div>
        <label style="color:black" for="text"><b>Κατάλληλος για συμβίωση με παιδιά:</b></label>
        <div class="lol">
        <input type="text" placeholder="Ναι/Οχι"  class="form-control" id="kids" required>
        </div>
        <label style="color:black" for="text"><b>Κατάλληλος για συμβίωση με άλλα ζώα:</b></label>
        <div class="lol">
        <input type="text" placeholder="Ναι/Οχι"  class="form-control" id="other_pets" required>
        </div>
</div>
      </form>
       
   
   
   <div class="bt">
           <button type="submit"><a style="color: white;" href="uploadController.jsp">Upload</a></button>
     </div>
      

</body>

</html>