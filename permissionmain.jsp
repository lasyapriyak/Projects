<html>
<head>
<title>RLP Tech Development</title>
<style>
    * {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}
.slideshow-container {
  position: relative;
  width: 800px;
  height: 500px;
  margin: auto;
}
.text {
  color: black;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
.dropbtn {
  background-color: black;
  color: whitesmoke;
  
  font-weight: bold;
  
 
  font-family: Arial, Helvetica, sans-serif;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: black;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  color:white;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #A9A9A9;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: 		#707070;}
#butt
{
 float:right;
 color: whitesmoke;
 background-color: black;
}
a:visited
{
color:whitesmoke;
}

body {
/* background-image: url("logo.png");*/
background-repeat: no-repeat;
background-size: 100% 100%;
background-position: center;

  font-weight: bold;
  
 
  font-family: Arial, Helvetica, sans-serif;
}
a
{
    display:inline-block;
}
#i{
    float:left;
}
#ddd{
    color:#a61f22;
    font-size: 20;
    background-color: whitesmoke;
    width:35%;
text-align: center;
valign:middle;
 padding: 70px 0;
margin: auto;
}

.footer{
text-align:center;
background-color:lightgrey;
font-family:Arial;
color:grey;
}
#b{
  
  
  background-color: black;
  color:whitesmoke;
  
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  font-size: 16px;
      margin: 20px;
      border-radius: 28px;}
</style>
</head>
<body >
    <br><div>
   <div id="i"><a href="permissionmain.jsp"><img src="rlpp.png" alt="RLP" height="60"></a></div>
 
<div id="butt">
  <a style="text-decoration:none" href="home.jsp" id="home">&nbsp&nbspHome</a>&nbsp&nbsp&nbsp
<a style="text-decoration:none" href="register.jsp" id="register">Register</a>&nbsp&nbsp&nbsp

<div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Login</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="emplogin.jsp">Employee Login</a>
    <a href="leadlogin.jsp">Leader Login</a>
    <a href="manlogin.jsp">Manager Login</a>
  </div>
</div>
<a style="text-decoration:none" href="about.jsp" id="abt">About</a>&nbsp&nbsp&nbsp
</div>

   </div>
<br><br><br><br>

<div>
   
<div class="slideshow-container">

<div class="mySlides fade">
  <img src="o1.jpeg" alt="office" style="width:100%">
  <div class="text">Eco-friendly Office</div>
</div>

<div class="mySlides fade">
  <img src="o6.jpg" style="width:100%">
  <div class="text">Friendly Environment</div>
</div>

<div class="mySlides fade">
  <img src="o3.jpg" style="width:100%">
  <div class="text">Client Meetings</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 4000); // Change image every 2 seconds
} 
    
 </script>   
</div><BR><br>
<center>
<h2>OUR PROJECTS</h2>
<bR>
<div id="ddd">
    <img src="klurem.png"  height="200"><br><br>
    KLU Time Table Management
    
    
    
</div>
<br><br><Br>
<div> <h2>Business problems? Technology challenges?</h2>
    <form action="f.html">
        <input type="submit" id="b" value="We'd love to help!">
    </form>
</div>
<div class="footer">

Copyright &copy 2019 RLP. All rights reserved 
</div>

</center>


</body>
</html>