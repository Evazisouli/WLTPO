<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <title>Επιλογή Φιλοζωικής & Δωρεά</title>
        <link href="css/homepage.css" rel="stylesheet">
        <link href="css/footer.css" rel="stylesheet">
        <link href="css/donation.css" rel="stylesheet">
        <%@ include file="header.jsp" %>



            <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
            <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <script src='https://kit.fontawesome.com/a076d05399.js'></script>

    </head>

    <body>
        <%@ include file="navigationmenu.jsp" %>

            <div class="container-fluid">
                <h1 class="large-font" style="color:orangered; margin-top: 2%;" id="headt"><b>Δωρεές</b></h1>
                <p> style="color: orangered"><span style="font-size:36px">Κάθε δωρεά μετράει!</span> <br> Επιλέξτε τη φιλοζωική της αρεσκείας σας και συνδράμετε ενεργά στη συνέχιση του έργου της.
                </p>

                <div class="row" style="margin-top: 2%;">
                    <div class="col-6">
                        <form class="example" style="max-width:300px; margin-top: 2%;">
                            <input type="text" id="myFilter" placeholder="Αναζήτηση Φιλοζωικής.." onkeyup="myFunction()" name="search2">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                    <div class="col-4"></div>
                    <div class="col-2" style="margin-top: 1%">
                        <button class="button" id="btnfil"><i class="fa fa-filter"></i> Προσθήκη Φίλτρου</button>
                    </div>
                </div>

            </div>





            <div class="container-fluid" id="mainco">

                <ul class="list-styled">
                    <li class="media">
                        <div class="container-fluid" id="imagecont">
                            <img class="image" src="images/1.jpg" alt="Avatar" class="image" style="width:100%">
                            <div class="middle">
                                <button class="btn" id="btndon" onclick="window.location.href='payment.jsp';">Δωρεά <i class="fa fa-donate"></i></button>
                            </div>
                        </div>
                        <div class="media-body">
                            <h1 class="mt-0 mb-1" style="color: orangered;"><strong>Φιλοζωική Αμαρουσίου </strong><button class="butt1" onclick="window.location.href='payment.jsp';"><i class="fa fa-donate"></i></button></h1>
                            Η Φιλοζωική Αμαρουσίου "Ο Χρυσός" ιδρύθηκε το 2010 από τον τότε δήμαρχο του δήμου μας, Γιώργο Πατούλη. Εδώ στη φιλοζωική Αμαρουσίου έχουμε αφιερώσει τη τελευταία δεκαετία στο να κάνουμε αυτό που αγαπάμε, δηλαδή να παρέχουμε δωρεάν περίθαλψη και φροντίδα
                            στους αγαπημένους τετράποδους φίλους μας.

                            <span id="spanoulis">
                          <p class="list-group-item-text"><i class="fa fa-location-arrow inf" style="color: orangered;"></i> Αθήνα</p>
                          <p class="list-group-item-text"><i class="fas fa-map-marked-alt" style="color: orangered;"></i> Μαρούσι</p>
                          <p class="list-group-item-text"><i class="fas fa-map-marker-alt" style="color: orangered;"></i> Νίκης 69</p>
                          <p class="list-group-item-text"><i class="fas fa-phone-alt" style="color: orangered;"></i> 2106851903</p>
                          <p class="list-group-item-text"><i class="fas fa-at" style="color: orangered;"></i> filoamar@gmail.com</p>
                          <p class="list-group-item-text"><i class="fab fa-facebook" style="color: orangered;"></i> Φιλοζωική Αμαρουσίου</p>
                  </span>

                        </div>
                    </li>
                    <li class="media my-4">
                        <div class="container" id="imagecont">
                            <img class="image" src="images/2.jpg" alt="Avatar" class="image" style="width:100%">
                            <div class="middle">
                                <button class="btn" id="btndon" onclick="window.location.href='payment.jsp';">Δωρεά <i class="fa fa-donate"></i></button>
                            </div>
                        </div>
                        <div class="media-body">
                            <h1 class="mt-0 mb-1" style="color: orangered;"><strong>Φιλοζωική Κολωνακίου</strong> <button class="butt1" onclick="window.location.href='payment.jsp';"><i class="fa fa-donate"></i></button></h1>
                            Η Φιλοζωική Κολωνακίου "ΜΟΥΑ" ιδρύθηκε το 1879 από τον ελληνοβρετανό ευεργέτη λώρδο Sostis Theodoulos. Ο λώρδος Theodoulos αποφάσισε να χρηματοδοτήσει την ανέγερση του κτηρίου που στεγάζει τη φιλοζωική μας ως ένδειξη διαμαρτυρίας απέναντι στην αδιαφορία
                            της τότε κυβέρνησης για τον τραγικό χαμό του γάτου του, του Κολλάτου, ο οποίος βρήκε τραγικό χαμό όταν έπεσε σε αποχετευτικό φρεάτιο στη Δεξαμενή Κολωνακίου.

                            <p class="list-group-item-text"><i class="fa fa-location-arrow inf" style="color: orangered;"></i> Αθήνα</p>
                            <p class="list-group-item-text"><i class="fas fa-map-marked-alt" style="color: orangered;"></i> Κολωνάκι</p>
                            <p class="list-group-item-text"><i class="fas fa-map-marker-alt" style="color: orangered;"></i> Ευκράτους 6</p>
                            <p class="list-group-item-text"><i class="fas fa-phone-alt" style="color: orangered;"></i> 2104739586</p>
                            <p class="list-group-item-text"><i class="fas fa-at" style="color: orangered;"></i> filokolonaqi@gmail.com</p>
                            <p class="list-group-item-text"><i class="fab fa-facebook" style="color: orangered;"></i> Φιλοζωική Κολωνακίου</p>
                        </div>
                    </li>

                    <li class="media my-4">
                        <div class="container" id="imagecont">
                            <img class="image" src="images/3.jpg" alt="Avatar" class="image" style="width:100%">
                            <div class="middle">
                                <button class="btn" id="btndon" onclick="window.location.href='payment.jsp';">Δωρεά <i class="fa fa-donate"></i></button>
                            </div>
                        </div>
                        <div class="media-body">
                            <h1 class="mt-0 mb-1" style="color: orangered;"><strong>Φιλοζωική Βύρωνα </strong><button class="butt1" onclick="window.location.href='payment.jsp';"><i class="fa fa-donate"></i></button></h1>
                            Στους πρόποδες του Υμηττού βρίσκεται κρυμμένο το καταφύγιο ζώων Βύρωνα, ένα εκ των παλαιότερων φιλοζωικών ιδρυμάτων, το οποίο στεγάζεται στο ίδιο κτήριο από το 1821 . Πιστέψε μας, 199 χρόνια μετά και ακόμα αντλούμε την ίδια χαρά και ψυχική ολοκλήρωση
                            όταν καταφέρνουμε να σώσουμε κάποιο ζωάκι. Εξάλλου η ανιδιοτέλεια και η αγάπη για τα ζώα αποτελεί και η παρακαταθήκη του προπροπροπροπάππου μας, του Θεόδωρου Κολοκοτρώνη.


                            <p class="list-group-item-text"><i class="fa fa-location-arrow inf" style="color: orangered;"></i> Αθήνα</p>
                            <p class="list-group-item-text"><i class="fas fa-map-marked-alt" style="color: orangered;"></i> Βύρωνας</p>
                            <p class="list-group-item-text"><i class="fas fa-map-marker-alt" style="color: orangered;"></i> Φωκιανού 42</p>
                            <p class="list-group-item-text"><i class="fas fa-phone-alt" style="color: orangered;"></i> 2103847562</p>
                            <p class="list-group-item-text"><i class="fas fa-at" style="color: orangered;"></i> fvyrona@gmail.com</p>
                            <p class="list-group-item-text"><i class="fab fa-facebook" style="color: orangered;"></i> Φιλοζωική Βύρωνα</p>
                        </div>
                    </li>
                    <li class="media my-4">
                        <div class="container" id="imagecont">
                            <img class="image" src="images/5.jpg" alt="Avatar" class="image" style="width:100%">
                            <div class="middle">
                                <button class="btn" id="btndon" onclick="window.location.href='payment.jsp';">Δωρεά <i class="fa fa-donate"></i></button>
                            </div>
                        </div>
                        <div class="media-body">
                            <h1 class="mt-0 mb-1" style="color: orangered;"><strong>Φιλοζωική Hλιούπολης </strong><button class="butt1" onclick="window.location.href='payment.jsp';"><i class="fa fa-donate"></i></button></h1>
                            Το καταφύγιων ζώων Ηλιούπολης, ιδρύθηκε το 2018, με συγχρηματοδότηση της Ευρωπαϊκής Ένωσης και την ευγενική χορηγία του πρίγκιπα της Σαουδικής Αραβίας Prince Fy the 2nd και του έμπιστου συμβούλου και φίλου του El ILLeOo Habibi IIX. Μπορεί να κατέχουμε
                            μονάχα 2 χρόνια εμπειρίας, ωστόσο, οι εθελοντές μας διακατέχονται από τέτοιο πάθος για τα ζώα που κανείς θα νόμιζε πως κατέχουν εμπειρία χρόνων.

                            <p class="list-group-item-text"><i class="fa fa-location-arrow inf" style="color: orangered;"></i> Αθήνα</p>
                            <p class="list-group-item-text"><i class="fas fa-map-marked-alt" style="color: orangered;"></i> Ηλιούπολη</p>
                            <p class="list-group-item-text"><i class="fas fa-map-marker-alt" style="color: orangered;"></i> Δόλασικ 13</p>
                            <p class="list-group-item-text"><i class="fas fa-phone-alt" style="color: orangered;"></i> 2106973280</p>
                            <p class="list-group-item-text"><i class="fas fa-at" style="color: orangered;"></i> ileoopolifilo@gmail.com</p>
                            <p class="list-group-item-text"><i class="fab fa-facebook" style="color: orangered;"></i> Φιλοζωική Ηλιούπολης</p>
                        </div>
                    </li>

                </ul>
            </div>
            <%@ include file = "footer.jsp" %>
    </body>

    </html>