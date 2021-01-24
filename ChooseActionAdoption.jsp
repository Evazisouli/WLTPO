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
  
  <link href="css/homepage.css" rel="stylesheet">

  <%@ include file="header.jsp" %>
    <style>



#app-container{
  display:flex;
}


#filter-toggle{
  position:absolute;
  right:0px;
  top:0px;
  width:30px;
  height:30px;
  border:none;
  border-radius:5px;
  background:orangered;
  transition:0.2s all;
}

#filter-toggle:hover{
  cursor:pointer;
  background:white;
  
}


.filter__container{
  position:fixed;
  right:0px;
  top:50px;
  margin:1%;
  background:white;
  transition:0.2s all;
  overflow:hidden;
  width:30px;
  max-width:1000px;
  min-height:30px;
  max-height:30px;
  border:1px solid orange;
  border-radius:5px;
  z-index:99;
}

.filter__container h3{
  color:orangered;
  font-weight:500;
  display:block;
  width:100%;
  text-align:center;
  font-size:16px;
  border-bottom:orange solid 1px;
  margin: auto;
  margin-top:0px;
  padding-bottom:4px;
  margin-bottom:16px;
}

.filter__only-on-show{
  display:flex;
  align-items:flex-start;
  flex-wrap:wrap;
  width:0%;
  overflow:hidden;
  max-height:0px;
  box-sizing:border-box;
  transition:0.2s all;
}

/* SHOW TOGGLE EFFECTS */
.filter__container--show{
  width:97vw;
  border-radius:0px;
  max-height:100vh;
  padding:8px;
  left: 0;
  right: 0;
  margin-left:auto;
  margin-right:auto;
}

.filter__container--show #filter-toggle{
  border:none;
}

@keyframes wait-first {
  from{max-height:0vh;}
  to{max-height:100vh;}
}

.filter__container--show .filter__only-on-show{
  width:100%;
  animation: wait-first 0.5s;
  animation-fill-mode: forwards;
  animation-delay:0.2s;
}

/* FILTER BOX STYLES */

.filter__dropdown {
  margin-right:4px;
  margin-bottom:4px;
  text-align:center;
  list-style:none;
  background:orangered;
  padding:8px 16px;
  border-radius:8px;
  display:inline-block;
}

.filter__dropdown li:first-of-type {
  font-weight:500;
  letter-spacing:0.5px;
  border-bottom:1px solid white;
  margin-bottom:4px;
  padding-bottom:4px;
  color:#fff;
}

.filter__dropdown input[type="checkbox"]{
  display:none;
  margin:0px;
}

.filter__dropdown input[type="checkbox"] + label {
  display:inline-block;
  padding:2px 4px;
  min-width:90px;
  border-radius:4px;
  color:white;
  margin-bottom:4px;
}

.filter__dropdown input[type="checkbox"] + label:hover{
  cursor:pointer;
  background:white;
  color:orangered;
}

.filter__dropdown input[type="checkbox"]:checked + label {
  background:white;
  color:orangered;
}




.filter-test-deck{
  margin:16px;
  padding:16px;
}

.card-stack{
  display:flex;
  flex-wrap:wrap;
}



.card ul{
  margin:0px;
  padding:0px;
  list-style:none;
}

.card li {
  color:red;
}

.card li span{
  color: blue;
}





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
            color: #ff5405;
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
        }

        .text-right {
            position:absolute;
            right: 0px;
            margin: 1px 18px;
        }

        #btnfil {
            background-color: orangered;
            color: white;
            font-size: 16px;
            padding: 8px 16px;
            border-radius: 16px;
        }

        #btnfil:hover {
            background-color: whitesmoke;
            color: orangered;
            border-radius: 16px;
        }

        form.example input[type=text] {
            padding: 10px;
            font-size: 17px;
            border: 1px solid orangered;
            float: left;
            width: 80%;
            background: #f1f1f1;
        }

        form.example button {
            float: left;
            width: 20%;
            padding: 10px;
            background: orangered;
            color: white;
            font-size: 17px;
            border: 1px solid orangered;
            border-left: none;
            cursor: pointer;
        }

        form.example button:hover {
            background:white;
            color: #ff5405;
        }

        form.example::after {
            content: "";
            clear: both;
            display: table;
        }


    </style>

</head>

<body>
  <%@ include file="navigationmenu.jsp" %>
    <div class="con">
        <h1 class="large-font" style="color:orangered"><b>Γνωρίστε τους πιο τρυφερούς μικρούς μας φίλους!</b></h1>
        <p><span style="font-size:36px">Όλοι σας μπορείτε να κάνετε μία αρχή υιοθετώντας ένα ζωάκι.</span> <br> Ρίξτε
            μία ματιά στα ζωάκια
            που προσφέρονται για υιοθεσία και θα τα λατρέψετε.
            <br>Υποσχόμαστε πως θα σας κερδίσουν από τη πρώτη κιόλας γνωριμία.</p>
        
        
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
            <input onclick='updateFilter(this)' type="checkbox" id="age-paidaki" name="age" value="a2">
            <label for="age-paidaki">2 ετών</label>
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
  
  
    <button id='filter-toggle'><i class="fas fa-filter"></i></button>
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
                    <div class="card"
                    data-gender='<%=zwo.getSex() %>'
                    data-size='<%=zwo.getSize() %>'
                    data-age='a<%=zwo.getAge() %>'
                    data-animal='<%=zwo.getKind() %>'>
                        <img src="images/<%=zwo.getImage()%>.jpg" alt="Pet">
                        <div class="container">
                            <h2 class="card-title"><%=zwo.getName() %></h2>
                            <p class="title"><%=zwo.getSex() %></p>
                            <p style="color: black;"> Πολύ φιλικός και παιχνιδιάρης, ιδανικός για περιβάλλον με παιδιά.</p>
                            <p style="color: black;"><%=zwo.getAge() %> χρονών</p>
                            
                            <p><a class="button" href="<%=request.getContextPath() %>/ShowPetDetails.jsp?id=<%=zwo.getIdpet()%>">Μάθε Περισσότερα
                            </a></p>
                            <% id = id + 1; %>

                        </div>
                    </div>
                </div>

            <% 	} %> 


               
            </div>
        
    






          




         
      
  </div>

    <script>
       let STATE = {
  animal: {
    Σκύλος: true,
    Γάτα: true,
    modifier: ['display','none']
  },
  gender: {
    Αρσενικό: true,
    Θηλυκό: true,
    modifier: ['display','none']
  },
  age: {
    a1: true,
    a2: true,
    a3: true,
    a4: true,
    a5: true,
    a6: true,
    a7: true,
    modifier: ['display','none']
  },
  size: {
    Μικρό: true,
    Μεσαίο: true,
    Μεγάλο: true,
    modifier: ['display','none']
  }
}

const updateFilter = function(e){
  const justChecked = e.checked;
  const name = e.name;
  const value = e.value;
  let thisFilterBlock = document.getElementsByName(name);
  
  
  if(value == 'all' && justChecked == false){
    e.checked = true;
    return;
  }
  
  if(value == 'all' && justChecked == true){
    for(let i = 0; i < thisFilterBlock.length; i++ ){
      if(thisFilterBlock[i].value !== 'all'){
        thisFilterBlock[i].checked = false;
      }
    }
  }
  
  if(value !== 'all' && justChecked == true){
    for(let i = 0; i < thisFilterBlock.length; i++ ){
      if(thisFilterBlock[i].value == 'all'){
        thisFilterBlock[i].checked = false;
        break;
      }
    }
  }
  
  if(value !== 'all' && justChecked == false){
    let atLeastOneTrue = false;
    for(let i = 0; i < thisFilterBlock.length; i++ ){
      if(thisFilterBlock[i].checked == true){
        atLeastOneTrue = true;
        break;
      }
    }
    if(atLeastOneTrue == false){
      for(let i = 0; i < thisFilterBlock.length; i++ ){
        if(thisFilterBlock[i].value == 'all'){
          thisFilterBlock[i].checked = true;
          updateStateBlock(thisFilterBlock, true);
          return;
        }
      }
    }
  }
  
  if(value !== 'all'){
    updateStateBlock(thisFilterBlock);
  } else {
    updateStateBlock(thisFilterBlock, true);
  }
}

const updateStateBlock = function(filterBlock, all) {
  const name = filterBlock[0].name;
  //console.log('Updating the state for ' + name +'!');
  //console.log(filterBlock);
  if(all === undefined){
    for(let i = 0; i < filterBlock.length; i++ ){
      if(filterBlock[i].value == 'all' ) continue;
      STATE[name][filterBlock[i].value] = filterBlock[i].checked;
    }
  }
  if(all === true){
    for(let i = 0; i < filterBlock.length; i++ ){
      if(filterBlock[i].value == 'all' ) continue;
      STATE[name][filterBlock[i].value] = true;
    }
  }
  
  printState(STATE);
  filter(STATE);
}


const filter = function(state){
  clearAllFilters(state);
  
  const categories = Object.keys(state);
  for(let i = 0; i < categories.length; i++){
    let categoryName = categories[i];
    let categoryData = state[categories[i]];
    let modifierProperty = categoryData.modifier[0];
    let modifierValue = categoryData.modifier[1];

    let targetsToHide = removeFromArray(Object.keys(categoryData), 'modifier').filter(function(ele){
      return !categoryData[ele];
    });

    for(let j = 0; j < targetsToHide.length; j++){
      //console.log('Searching for: [data-'+categoryName+'="'+targetsToHide[j]+'"]');
      //console.log('Adding ' + modifierProperty +':'+modifierValue);
      let modifiedElements = document.querySelectorAll('[data-'+categoryName+'="'+targetsToHide[j]+'"]');
      for(let k = 0; k < modifiedElements.length; k++){
        modifiedElements[k].style[modifierProperty] = modifierValue;
      }
    }
  }
};

const clearAllFilters = function(state){
  const categories = Object.keys(state);
  for(let i = 0; i < categories.length; i++){
    let categoryName = categories[i];
    let categoryData = state[categories[i]];
    let modifierProperty = categoryData.modifier[0];
    let modifierValue = categoryData.modifier[1];

    let targets = removeFromArray(Object.keys(categoryData), 'modifier');

    for(let j = 0; j < targets.length; j++){
      let cleanElements = document.querySelectorAll('[data-'+categoryName+'="'+targets[j]+'"]');
      for(let k = 0; k < cleanElements.length; k++){
        cleanElements[k].style[modifierProperty] = null;
      }
    }
  }
}


const printState = function(state){
  document.getElementById('state-output').innerHTML = syntaxHighlighting(state);
}

const syntaxHighlighting = function(json) {
    if (typeof json != 'string') {
         json = JSON.stringify(json, undefined, 2);
    }
    json = json.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
    return json.replace(/("(\\u[a-zA-Z0-9]{4}|\\[^u]|[^\\"])*"(\s*:)?|\b(true|false|null)\b|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?)/g, function (match) {
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
  return arr.filter((ele) =>{
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