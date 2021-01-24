<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="ismgroup46.*" %>

        <% if (session.getAttribute("pet") != "pet") { %>
            <jsp:forward page="ChooseActionAdoption.jsp" />
            <% } else {
    session.setAttribute("pet", "nopet");
}
    String id = request.getParameter("id");
    PetService petserv = new PetService();
    Pet pet = petserv.findPet(id);
    AdoptionService ad = new AdoptionService();
    Adoption adoption = ad.findAdoption(pet.getIdadoption());
    session.setAttribute("buttonadoption", "yes");
    session.setAttribute("id", id);
    
%>

                <!DOCTYPE html>
                <html lang="en">

                <head>

                    <title>Πληροφορίες ζώου προς υιοθεσία</title>
                    <%@ include file="header.jsp" %>
                        <link href="css/homepage.css" rel="stylesheet">
                        <link rel="stylesheet" href="css/profile.css">
                        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
                        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                        <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>


                </head>

                <body>
                    <%@ include file="navigationmenu.jsp" %>


                        <div class="profile_card">
                            <div class=image_container>
                                <img src="images/<%=pet.getImage()%>.jpg" style="width:100%">
                            </div>

                            <div class="title">
                                <h1>
                                    <%=pet.getName()%>
                                </h1>
                            </div>




                            <div class="info">
                                <div class="info_data">
                                    <div class="data">
                                        <p><i class="fa fa-calendar inf"></i><b> Ημερομηνία δημοσίευσης:</b>
                                            <%=adoption.getDate()%>
                                        </p>

                                        <% if (adoption.getIdshelter() != null ) { 
                ShelterService sheltserv = new ShelterService();
                Shelter sh = sheltserv.findShelter(adoption.getIdshelter());
                %>

                                            <p><i class="fa fa-sitemap inf"></i></i><b> Φιλοζωική οργάνωση:</b>
                                                <%=sh.getName()%>
                                            </p>
                                            <p><i class="fa fa-location-arrow inf"></i><b> Πόλη:</b>
                                                <%=sh.getCity()%>
                                            </p>
                                            <p><i class="fa fa-address-card inf"></i><b> Περιοχή:</b>
                                                <%=sh.getArea()%>
                                            </p>
                                            <p><i class="fa fa-address-book inf"></i><b> Διεύθυνση:</b>
                                                <%=sh.getAddress()%>
                                            </p>
                                            <p><i class="fa fa-envelope-open inf"></i><b> Ταχυδρομικός κώδικας: </b>
                                                <%=sh.getPostal_code()%>
                                            </p>
                                            <hr>

                                            <% } else if (adoption.getIdpetlover() != null ){ 
                PetloverService petloverserv = new PetloverService();
                Petlover lov = petloverserv.findPetlover(adoption.getIdpetlover()); %>
                                                <p><i class="fa fa-sitemap inf"></i></i><b> Ονοματεπώνυμο Ιδιοκτήτη:</b>
                                                    <%=lov.getName()%>
                                                        <%=lov.getSurname()%>
                                                </p>
                                                <p><i class="fa fa-location-arrow inf"></i><b> Πόλη:</b>
                                                    <%=lov.getCity()%>
                                                </p>
                                                <p><i class="fa fa-address-card inf"></i><b> Περιοχή:</b>
                                                    <%=lov.getArea()%>
                                                </p>
                                                <hr>
                                                <% } %>
                                                    <p><i class="fa fa-paw inf"></i><b>  Είδος:</b>
                                                        <%=pet.getKind()%>
                                                    </p>
                                                    <p><i class="fa fa-paw inf"></i><b>  Ηλικία:</b>
                                                        <%=pet.getAge()%> ετών</p>
                                                    <p><i class="fa fa-paw inf"></i><b>  Μέγεθος:</b>
                                                        <%=pet.getSize()%>
                                                    </p>
                                                    <p><i class="fa fa-paw inf"></i><b>  Φύλο:</b>
                                                        <%=pet.getSex()%>
                                                    </p>
                                                    <p><i class="fa fa-paw inf"></i><b>  Βιβλιάριο υγείας:</b>
                                                        <%=pet.getHealth_card()%>
                                                    </p>
                                                    <p><i class="fa fa-paw inf"></i><b>  Μόνιμα προβλήματα υγείας:</b>
                                                        <%=pet.getHealth_probs()%>
                                                    </p>
                                                    <p><i class="fa fa-paw inf"></i><b>  Στειρωμένο:</b>
                                                        <%=pet.getSterilisation()%>
                                                    </p>
                                                    <p><i class="fa fa-paw inf"></i><b>  Αριθμός microchip:</b>
                                                        <%=pet.getMicrochipid()%>
                                                    </p>
                                                    <p><i class="fa fa-paw inf"></i><b>  Υποχρεωτικό συμβόλαιο υιοθεσίας:</b>
                                                        <%=pet.getContract()%>
                                                    </p>
                                                    <p><i class="fa fa-paw inf"></i><b>  Κατάλληλο για συμβίωση με παιδιά:</b>
                                                        <%=pet.getKids()%>
                                                    </p>
                                                    <p><i class="fa fa-paw inf"></i><b>  Καταλληλο για συμβίωση με άλλα ζώα:</b>
                                                        <%=pet.getOther_pets()%>
                                                    </p>
                                                    <hr>
                                                    <% if (adoption.getIdshelter() != null ) { 
                ShelterService sheltserv = new ShelterService();
                Shelter sh = sheltserv.findShelter(adoption.getIdshelter());
                %>
                                                        <p><i class="fa fa-user inf"></i><b>  Υπεύθυνος επικοινωνίας:</b>
                                                            <%=sh.getContact()%>
                                                        </p>
                                                        <p><i class="fa fa-envelope inf"></i><b>  Email επικοινωνίας:</b>
                                                            <%=sh.getMail()%>
                                                        </p>
                                                        <p><i class="fa fa-phone inf"></i><b>  Τηλέφωνο επικοινωνίας:</b>
                                                            <%=sh.getPhone()%>
                                                        </p>

                                                        <% } else if (adoption.getIdpetlover() != null ) { 
                PetloverService petloverserv = new PetloverService();
                Petlover lov = petloverserv.findPetlover(adoption.getIdpetlover()); %>
                                                            <p><i class="fa fa-envelope inf"></i><b>  Email επικοινωνίας:</b>
                                                                <%=lov.getMail()%>
                                                            </p>
                                                            <p><i class="fa fa-phone inf"></i><b>  Τηλέφωνο επικοινωνίας:</b>
                                                                <%=lov.getPhone()%>
                                                            </p>
                                                            <% } %>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class=center>
                                <% if ((session.getAttribute("object") instanceof Petlover) || (session.getAttribute("object") == null)) { %>
                                    <a class="submit" href="ShowPetDetailsController.jsp"> ΥΙΟΘΕΤΗΣΕ ΤΩΡΑ</a>
                                    <% } %>
                            </div>
                </body>

                </html>