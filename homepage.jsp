<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <title>Αρχική Σελίδα</title>
        <%@ include file="header.jsp" %>
            <link href="css/homepage.css" rel="stylesheet">
            <link href="css/homepage_style.css" rel="stylesheet">
            <link href="css/footer.css" rel="stylesheet">

    </head>

    <body>
        <%@ include file="navigationmenu.jsp" %>
            <div class="container">
                <div class="row">
                    <div class="column">
                        <img src="images/pets1.jpg" style="width:100%">
                        <img src="images/pets2.jpg" style="width:100%">
                    </div>
                    <div class="column">
                        <img src="images/pets3.jpg" style="width:100%">
                        <img src="images/pets4.jpg" style="width:100%">
                    </div>
                    <div class="column">
                        <img src="images/pets5.jpg" style="width:100%">
                        <img src="images/pets6.jpg" style="width:100%">
                    </div>
                    <div class="column">
                        <img src="images/pets7.jpg" style="width:100%">
                        <img src="images/pets.jpg" style="width:100%">
                    </div>
                    <div class="column-66">
                        <h1 class="large-font" style="color:orangered"><b>Κάντε μία καινούρια αρχή στη ζωή σας!</b></h1>
                        <p><span style="font-size:36px">Υιοθετήστε ένα ζωάκι.</span> <br> Ένα κατοικίδιο είναι πιθανότητα μία από τις καλύτερες συντροφιές, δένεται μαζί σας και κάνει κάθε στιγμή σας απολαυστική.
                            <br>Τολμήστε να υιοθετήσετε και θα απορείτε πως δεν το είχατε κάνει νωρίτερα. </p>
                        <a class="button" href="ChooseActionAdoption.jsp">Δες τις αγγελίες</a>
                    </div>
                </div>
            </div>
            <div class="containers" style="background-color: #ff5405;">
                <div class="rows">
                    <div class="con" style="background-color: #ff5405;">
                        <div class="photo">
                            <img src="images/donation.jpg" style="width:100%">
                        </div>
                        <div class="col">
                            <h1 class="large-font" style="color: white"><b>Μπορείτε κι εσείς να συνδράμετε ενεργά.</b></h1>
                            <p><span style="font-size:36px">Κάνετε μία δωρεά.</span> <br> Οι φιλοζωικές οργανώσεις φιλοξενούν μεγάλο πλήθος ζώων και η προσφορά σας μπορεί να τις βοηθήσει σημαντικά να συνεχίσουν στο έργο τους.<br> Μέχρι και η ελάχιστη δωρεά
                                μπορεί να προσφέρει πολλά στους μικρούς μας φίλους.<br> Κάνετε την αρχή δωρίζοντας οτιδήποτε μπορεί να είναι απαραίτητο.</p>
                            <br>
                            <a class="btn" href="donation.jsp">Ενδιαφέρομαι για δωρεά</a>
                        </div>

                    </div>
                </div>
            </div>
            <div class="contain">
                <div class="rows2">
                    <div class="cont" style="background-color: orangered">
                        <div class="colum">
                            <h1 class="large-font" style="color:#ff5405"><b>Χάσατε το κατοικίδιό σας ή βρήκατε ένα χαμένο;</b></h1>
                            <p><span style="font-size:36px">Μην ξεχάσετε να το δημοσιεύσετε!</span> <br> Ένας απίστευτα μεγάλος αριθμός ιδιοκτητών έχει τύχει να χάσει το κατοικίδιο του οριστικά, μη μπορώντας να το ξαναβρεί ποτέ.<br> Ταυτόχρονα, τόσοι από
                                εμάς βρίσκουμε καθημερινά κατοικίδια, τα οποία δυστυχώς παραμένουν χαμένα.<br> Ας κάνουμε κάτι για αυτό λοιπόν!

                            </p>
                            <br>
                            <a class="btns" href="upload.jsp">Αγγελία για αναζήτηση/εύρεση</a>
                        </div>
                        <div class="image">
                            <img src="images/lost.jpg" style=" width:100%">
                        </div>
                        <div class="image2">
                            <img src="images/found.jpg" style="width:100%">
                        </div>
                    </div>
                </div>
            </div>
            <%@ include file="footer.jsp" %>
    </body>

    </html>