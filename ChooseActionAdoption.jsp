<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="ismgroup46.*, java.util.List" %>

        <% 
    session.setAttribute("pet", "pet");
    PetService petservice = new PetService();
    List<Pet> animal =  petservice.showPets();
    
%>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <title>Υιοθεσία ζώου</title>

                
                <link href="css/chooseAdoption.css" rel="stylesheet">
                <link href="css/homepage.css" rel="stylesheet">
		<link href="css/footer.css" rel="stylesheet">


                <%@ include file="header.jsp" %>
                <style>
                    @media screen and (max-width: 1600px)and (min-width: 993px) {
                        .card-text {
                            width: 25%;
                        }
                
                    }
                    @media screen and (max-width: 992px) and (min-width: 769px) {
                        .column {
                            width: 33.333%;
                        }
                        .card-text {
                            width: 33.333%;
                        }
                
                    }
    
                    @media screen and (max-width: 768px) and (min-width: 601px) {
                        .column {
                            width: 50%;
                        }
                       
                       
                    }
    
                    @media screen and (max-width: 600px) {
                        .column {
                            width: 100%;
                        }
                       
                    }
                </style>

            </head>
            <body>
 <div id="page-container">
   <div id="content-wrap">
                <%@ include file="navigationmenu.jsp" %>
                    <div class="con">
                        <h1 class="large-font" style="color:orangered"><b>   Γνωρίστε τους πιο τρυφερούς μικρούς μας φίλους!</b></h1>
                        <p><span style="font-size:36px">   Όλοι σας μπορείτε να κάνετε μία αρχή υιοθετώντας ένα ζωάκι.</span> <br>   Ρίξτε μία ματιά στα ζωάκια που προσφέρονται για υιοθεσία και θα τα λατρέψετε.
                            <br>   Υποσχόμαστε πως θα σας κερδίσουν από τη πρώτη κιόλας γνωριμία.</p>
                        <br> <button class="btn" id="btnfil" onclick="window.location.href='CreateAdoptionForm.jsp';"><i class="fa fa-plus"></i> Δημιουργία αιτήματος αγγελίας υιοθεσίας</button>


                        <div id='filter-container' class='filter__container'>
                            <div class='filter__only-on-show'>
                                <h3>Επιλογή Φίλτρων Αναζήτησης</h3>
                                <div class='filter__options'>
                                    <!-- START First Dropdown 01 -->
                                    <div class='filter__dropdown'>
                                        <li>Ηλικία</li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="age-paidaki" name="age" value="a1">
                                            <label for="age-paidaki">Εώς 1 ετών</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="age-paidi" name="age" value="a2">
                                            <label for="age-paidi">2 ετών</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="age-efhvos" name="age" value="a3">
                                            <label for="age-efhvos">3 ετών</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="age-enhlikas" name="age" value="a4">
                                            <label for="age-enhlikas">4 ετών</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="age-pioenhlikas" name="age" value="a5">
                                            <label for="age-pioenhlikas">5 ετών</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="age-gerodaki" name="age" value="a6">
                                            <label for="age-gerodaki">6 ετών</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="age-piogerodaki" name="age" value="a7">
                                            <label for="age-piogerodaki">7+ ετών</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="age-all" name="age" value="all" checked>
                                            <label for="age-all">Όλες</label>
                                        </li>
                                    </div>
                                    <!-- END Dropdown 01-->
                                    <!-- START Dropdown 02 -->
                                    <div class='filter__dropdown'>
                                        <li>Μέγεθος</li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="size-small" name="size" value="Μικρό">
                                            <label for="size-small">Μικρό</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="size-medium" name="size" value="Μεσαίο">
                                            <label for="size-medium">Μεσαίο</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="size-large" name="size" value="Μεγάλο">
                                            <label for="size-large">Μεγάλο</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="size-all" name="size" value="all" checked>
                                            <label for="size-all">Όλα</label>
                                        </li>
                                    </div>
                                    <!-- END Dropdown 02-->
                                    <!-- START Dropdown 03 -->
                                    <div class='filter__dropdown'>
                                        <li>Φύλο</li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="gender-male" name="gender" value="Αρσενικό">
                                            <label for="gender-male">Αρσενικό</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="gender-female" name="gender" value="Θηλυκό">
                                            <label for="gender-female">Θηλυκό</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="gender-all" name="gender" value="all" checked>
                                            <label for="gender-all">Όλα</label>
                                        </li>
                                    </div>
                                    <!-- END Dropdown 03-->
                                    <!-- START Dropdown 04 -->
                                    <div class='filter__dropdown'>
                                        <li>Είδος Κατοικιδίου</li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="animal-Σκύλος" name="animal" value="Σκύλος">
                                            <label for="animal-Σκύλος">Σκύλος</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="animal-Γάτα" name="animal" value="Γάτα">
                                            <label for="animal-Γάτα">Γάτα</label>
                                        </li>
                                        <li>
                                            <input onclick='updateFilter(this)' type="checkbox" id="animal-all" name="animal" value="all" checked>
                                            <label for="animal-all">Όλα</label>
                                        </li>
                                    </div>
                                    <!-- END Dropdown 04-->
                                </div>
                            </div>


                            <button id='filter-toggle'><span class="glyphicon glyphicon-filter" aria-hidden="true" style="color: white;"></span></button>
                        </div>

                        <div id='app-container'>
                            <div hidden class='state-container'>
                                <h1>State of Filter</h1>
                                <pre id='state-output'></pre>
                            </div>
                            <div class='filter-test-deck'>
                                <div class="row">

                                    <% 	int id = 1;
            for(Pet zwo: animal) { %>

                                        <div class="column">
                                            <div class="card" data-gender='<%=zwo.getSex() %>' data-size='<%=zwo.getSize() %>' data-age='a<%=zwo.getAge() %>' data-animal='<%=zwo.getKind() %>'>
                                                <img src="images/<%=zwo.getImage()%>.jpg" alt="Pet">
                                                <div class="container">
                                                    <h2 class="card-title">
                                                        <%=zwo.getName() %>
                                                    </h2>
                                                    <p class="title">
                                                        <%=zwo.getSex() %>
                                                    </p>
                                                    <p style="color: black;"> Πολύ φιλικός και παιχνιδιάρης, ιδανικός για περιβάλλον με παιδιά.</p>
                                                    <p style="color: black;">
                                                        <%=zwo.getAge() %> χρονών</p>

                                                    <p><a class="button" href="<%=request.getContextPath() %>/ShowPetDetails.jsp?id=<%=zwo.getIdpet()%>">Μάθε Περισσότερα
                                                    </a></p>
                                                    <% id = id + 1; %>

                                                </div>
                                            </div>
                                        </div>

                                        <% 	} %>
                                </div>
                            </div>
                        </div>
                    </div>
   </div>
</div>
        
<%@ include file = "footer.jsp" %>
</div>

                            <script>
                                let STATE = {
                                    animal: {
                                        Σκύλος: true,
                                        Γάτα: true,
                                        modifier: ['display', 'none']
                                    },
                                    gender: {
                                        Αρσενικό: true,
                                        Θηλυκό: true,
                                        modifier: ['display', 'none']
                                    },
                                    age: {
                                        a1: true,
                                        a2: true,
                                        a3: true,
                                        a4: true,
                                        a5: true,
                                        a6: true,
                                        a7: true,
                                        modifier: ['display', 'none']
                                    },
                                    size: {
                                        Μικρό: true,
                                        Μεσαίο: true,
                                        Μεγάλο: true,
                                        modifier: ['display', 'none']
                                    }
                                }

                                const updateFilter = function(e) {
                                    const justChecked = e.checked;
                                    const name = e.name;
                                    const value = e.value;
                                    let thisFilterBlock = document.getElementsByName(name);


                                    if (value == 'all' && justChecked == false) {
                                        e.checked = true;
                                        return;
                                    }

                                    if (value == 'all' && justChecked == true) {
                                        for (let i = 0; i < thisFilterBlock.length; i++) {
                                            if (thisFilterBlock[i].value !== 'all') {
                                                thisFilterBlock[i].checked = false;
                                            }
                                        }
                                    }

                                    if (value !== 'all' && justChecked == true) {
                                        for (let i = 0; i < thisFilterBlock.length; i++) {
                                            if (thisFilterBlock[i].value == 'all') {
                                                thisFilterBlock[i].checked = false;
                                                break;
                                            }
                                        }
                                    }

                                    if (value !== 'all' && justChecked == false) {
                                        let atLeastOneTrue = false;
                                        for (let i = 0; i < thisFilterBlock.length; i++) {
                                            if (thisFilterBlock[i].checked == true) {
                                                atLeastOneTrue = true;
                                                break;
                                            }
                                        }
                                        if (atLeastOneTrue == false) {
                                            for (let i = 0; i < thisFilterBlock.length; i++) {
                                                if (thisFilterBlock[i].value == 'all') {
                                                    thisFilterBlock[i].checked = true;
                                                    updateStateBlock(thisFilterBlock, true);
                                                    return;
                                                }
                                            }
                                        }
                                    }

                                    if (value !== 'all') {
                                        updateStateBlock(thisFilterBlock);
                                    } else {
                                        updateStateBlock(thisFilterBlock, true);
                                    }
                                }

                                const updateStateBlock = function(filterBlock, all) {
                                    const name = filterBlock[0].name;
                                    //console.log('Updating the state for ' + name +'!');
                                    //console.log(filterBlock);
                                    if (all === undefined) {
                                        for (let i = 0; i < filterBlock.length; i++) {
                                            if (filterBlock[i].value == 'all') continue;
                                            STATE[name][filterBlock[i].value] = filterBlock[i].checked;
                                        }
                                    }
                                    if (all === true) {
                                        for (let i = 0; i < filterBlock.length; i++) {
                                            if (filterBlock[i].value == 'all') continue;
                                            STATE[name][filterBlock[i].value] = true;
                                        }
                                    }

                                    printState(STATE);
                                    filter(STATE);
                                }


                                const filter = function(state) {
                                    clearAllFilters(state);

                                    const categories = Object.keys(state);
                                    for (let i = 0; i < categories.length; i++) {
                                        let categoryName = categories[i];
                                        let categoryData = state[categories[i]];
                                        let modifierProperty = categoryData.modifier[0];
                                        let modifierValue = categoryData.modifier[1];

                                        let targetsToHide = removeFromArray(Object.keys(categoryData), 'modifier').filter(function(ele) {
                                            return !categoryData[ele];
                                        });

                                        for (let j = 0; j < targetsToHide.length; j++) {
                                            //console.log('Searching for: [data-'+categoryName+'="'+targetsToHide[j]+'"]');
                                            //console.log('Adding ' + modifierProperty +':'+modifierValue);
                                            let modifiedElements = document.querySelectorAll('[data-' + categoryName + '="' + targetsToHide[j] + '"]');
                                            for (let k = 0; k < modifiedElements.length; k++) {
                                                modifiedElements[k].style[modifierProperty] = modifierValue;
                                            }
                                        }
                                    }
                                };

                                const clearAllFilters = function(state) {
                                    const categories = Object.keys(state);
                                    for (let i = 0; i < categories.length; i++) {
                                        let categoryName = categories[i];
                                        let categoryData = state[categories[i]];
                                        let modifierProperty = categoryData.modifier[0];
                                        let modifierValue = categoryData.modifier[1];

                                        let targets = removeFromArray(Object.keys(categoryData), 'modifier');

                                        for (let j = 0; j < targets.length; j++) {
                                            let cleanElements = document.querySelectorAll('[data-' + categoryName + '="' + targets[j] + '"]');
                                            for (let k = 0; k < cleanElements.length; k++) {
                                                cleanElements[k].style[modifierProperty] = null;
                                            }
                                        }
                                    }
                                }


                                const printState = function(state) {
                                    document.getElementById('state-output').innerHTML = syntaxHighlighting(state);
                                }

                                const syntaxHighlighting = function(json) {
                                    if (typeof json != 'string') {
                                        json = JSON.stringify(json, undefined, 2);
                                    }
                                    json = json.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
                                    return json.replace(/("(\\u[a-zA-Z0-9]{4}|\\[^u]|[^\\"])*"(\s*:)?|\b(true|false|null)\b|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?)/g, function(match) {
                                        var cls = 'number';
                                        if (/^"/.test(match)) {
                                            if (/:$/.test(match)) {
                                                cls = 'key';
                                            } else {
                                                cls = 'string';
                                            }
                                        } else if (/true|false/.test(match)) {
                                            cls = 'boolean';
                                        } else if (/null/.test(match)) {
                                            cls = 'null';
                                        }
                                        return '<span class="' + cls + '">' + match + '</span>';
                                    });
                                }

                                const removeFromArray = (arr, value) => {
                                    return arr.filter((ele) => {
                                        return ele != value;
                                    });
                                }

                                const filterToggle = document.getElementById('filter-toggle');

                                filterToggle.addEventListener('click', function() {
                                    const filterContainer = document.getElementById('filter-container');

                                    filterContainer.classList.toggle('filter__container--show');
                                });


                                printState(STATE);
                            </script>
        
            </body>

            </html>