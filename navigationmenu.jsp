<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="ismgroup46.*" %>
        <div class="topnav" id="mytopnav">
            <a class="logo">Who Let The Pets Out</a>
            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
            <a class="<%=request.getRequestURI().replace(request.getContextPath() + "/", "").equals("homepage.jsp") ? "active" : "" %>" href="homepage.jsp">Αρχική</a>
            <% if ((!(request.getRequestURI().replace(request.getContextPath() + "/", "").equals("loginpage.jsp"))) && 
    (!(request.getRequestURI().replace(request.getContextPath() + "/", "").equals("signup.jsp"))) &&
    (!(request.getRequestURI().replace(request.getContextPath() + "/", "").equals("signup1.jsp"))) &&
    (!(request.getRequestURI().replace(request.getContextPath() + "/", "").equals("signup2.jsp"))) &&
    (!(request.getRequestURI().replace(request.getContextPath() + "/", "").equals("upload.jsp"))) &&
    (!(request.getRequestURI().replace(request.getContextPath() + "/", "").equals("Confirmation.jsp"))) &&
    (!(request.getRequestURI().replace(request.getContextPath() + "/", "").equals("payment.jsp")))) { %>
                <a class="<%=request.getRequestURI().replace(request.getContextPath() + "/", "").equals("lostandfound.jsp") ? "active" : "" %>"href="lostandfound.jsp">Αναζητήσεις</a>
                <a class="<%=request.getRequestURI().replace(request.getContextPath() + "/", "").equals("ChooseActionAdoption.jsp") ? "active" : "" %>"href="ChooseActionAdoption.jsp">Υιοθεσία</a>
                <a class="<%=request.getRequestURI().replace(request.getContextPath() + "/", "").equals("donation.jsp") ? "active" : "" %>"href="donation.jsp">Δωρεές</a>

                <% } %>
                    <div class="topnav-right">
                        <% if ((!(request.getRequestURI().replace(request.getContextPath() + "/", "").equals("loginpage.jsp"))) && 
        (!(request.getRequestURI().replace(request.getContextPath() + "/", "").equals("signup.jsp"))) &&
        (!(request.getRequestURI().replace(request.getContextPath() + "/", "").equals("signup1.jsp"))) &&
        (!(request.getRequestURI().replace(request.getContextPath() + "/", "").equals("signup2.jsp"))) ) { %>
                            <% if (session.getAttribute("object") == null) { %>
                                <a href="<%=request.getContextPath() %>/loginpage.jsp">Σύνδεση/Εγγραφή</a>
                                <%} else { 
            if (session.getAttribute("object") instanceof Petlover) { 
                Petlover petlover = (Petlover) session.getAttribute("object");
                %>

                                    <a href="<%=request.getContextPath() %>/myuserprofile.jsp?id=<%=petlover.getUsername()%>">
                                        <b>Καλωσήρθες <%=petlover.getUsername() %></b>
                                    </a>

                                    <% } else if (session.getAttribute("object") instanceof Shelter) {
                Shelter shelter = (Shelter) session.getAttribute("object");
                %>

                                        <a href="<%=request.getContextPath() %>/myshelterprofile.jsp?id=<%=shelter.getUsername()%>">
                                            <b>Καλωσήρθες <%=shelter.getUsername() %></b>
                                        </a>

                                        <%} %>
                                            <a href="<%=request.getContextPath() %>/logout.jsp">Αποσύνδεση</a>
                                            <% }
             } %>
                    </div>
        </div>