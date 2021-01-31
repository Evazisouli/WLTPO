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
        <div class=selector>
        <label for="kind">Επέλεξε ζώο:</label>

        <select name="kind" id="kind">
          <option value="dog">Σκύλος</option>
          <option value="cat">Γάτα</option>
          <option value="bird">Πουλί</option>
          <option value="erpeto">Ερπετό</option>
        </select> 
    </div>

    
        <div class=selector>
        <label for="kind">Επέλεξε ζώο:</label>

        <select name="kind" id="kind">
          <option value="dog">Σκύλος</option>
          <option value="cat">Γάτα</option>
          <option value="bird">Πουλί</option>
          <option value="erpeto">Ερπετό</option>
        </select> 
    </div>
     
  
        <div class=selector>
        <label for="size">Επέλεξε μέγεθος:</label>

        <select name="size" id="size">
          <option value="small">Μικρό (<15kg)</option>
          <option value="medium">Μεσαίο (<25kg)</option>
          <option value="large">Μεγάλο (>25kg)</option>
        </select> 
    </div>
     
            <div class="form-group">
                <label style="color:black" for="email"><b>Όνομα κατοικίδιου* (Υποχρεωτικό):</b></label>
                <div class="lol">
                <input type="name" placeholder="Εισάγετε το όνομα του κατοικίδιου..." class="form-control" id="petname">
                </div>
                <div class="form-group">
                    <label style="color:black" for="email"><b>Ηλικία κατοικίδιου* (Υποχρεωτικό):</b></label>
                    <div class="lol">
                    <input type="text" placeholder="Εισάγετε την ηλικία του κατοικίδιου..." class="form-control" id="age">
                    </div>
                  </div>
              </div> 
            <div class="form-group">
                    <label style="color:black" for="email"><b>Πόλη* (Υποχρεωτικό):</b></label>
                    <div class="lol">
                    <input type="text" placeholder="Εισάγετε πόλη.." class="form-control" id="city">
                    </div>
                  </div>
                  <div class="form-group">
                    <label style="color:black" for="email"><b>Περιοχή που βρίσκεσαι* (Υποχρεωτικό):</b></label>
                    <div class="lol">
                    <input type="text" placeholder="Εισάγετε περιοχή.." class="form-control" id="area">
                    </div>
                  </div>
          </div>
          </div>
           <div class="form-group">
             <label style="color:black" for="email"><b>Τηλέφωνο Επικοινωνίας* (Υποχρεωτικό):</b></label>
             <div class="lol">
             <input type="text" placeholder="Εισάγετε τηλέφωνο.."  class="form-control" id="phone">
             </div>
           </div>
           <div class="form-group">
            <label style="color:black" for="email"><b>Περιγραφή* (Υποχρεωτική):</b></label>
            <div class="lol">
            <input type="name" placeholder="Σύντομη περιγραφή..." class="form-control" id="description">
            </div>
          </div>
          <div class="form-group">
            <label style="color:black" for="email"><b>Αριθμός Microchip:</b></label>
            <div class="lol">
            <input type="text" placeholder="Εισάγετε αριθμό Microchip.."  class="form-control" id="=microchipid">
            </div>
        </div>

          
            <div class=selector>
            <label style="color: white;" for="health_card">Βιβλιάριο Υγείας:</label>
    
            <select name="health_card" id="health_card">
              <option value="yes">Ναι</option>
              <option value="no">Όχι</option>
            </select> 
        </div>

 
                <div class=selector>
                <label style="color: white;" for="health_probs">Μόνιμα Προβλήματα Υγείας:</label>
        
                <select name="health_probs" id="health_probs">
                  <option value="yes">Ναι</option>
                  <option value="no">Όχι</option>
                </select> 
            </div>
     
    
  
            <div class=selector>
            <label style="color: white;" for="sterilisation">Στειρωμένο:</label>
    
            <select name="sterilisation" id="sterilisation">
              <option value="yes">Ναι</option>
              <option value="no">Όχι</option>
            </select> 
    </div>

   
        <div class=selector>
        <label style="color: white;" style="color: white;" for="contract">Υποχρεωτικό Συμβόλαιο Υιοθεσίας:</label>

        <select name="contract" id="contract">
          <option value="yes">Ναι</option>
          <option value="no">Όχι</option>
        </select> 
</div>

  
    <div class=selector>
    <label style="color: white;" for="kids">Κατάλληλος για συμβίωση με παιδιά:</label>

    <select name="kids" id="kids">
      <option value="yes">Ναι</option>
      <option value="no">Όχι</option>
    </select> 
</div>

 
    <div class=selector>
    <label style="color: white;" for="other_pets">Κατάλληλος για συμβίωση με άλλα ζώα:</label>

    <select name="other_pets" id="other_pets">
      <option value="yes">Ναι</option>
      <option value="no">Όχι</option>
    </select> 
</div>

           </div>
           </div>
         </form>
       
   
   
   <div class="bt">
           <button type="submit"><a style="color: white;" href="#">Upload</a></button>
     </div>
      

</body>

</html>