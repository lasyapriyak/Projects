<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>RLP Tech Development</title>
<style>
#imgg
{
float: left;
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
 font-weight: bold;
  
 
  font-family: Arial, Helvetica, sans-serif;
}
a:visited
{
color:whitesmoke;
}
    
a
{
    display:inline-block;
}
#i{
    float:left;
}
</style>
<script type="text/javascript">
function valid()
{
 var a = document.f.fname.value;
var id=document.f.eid.value;
var email=document.f.emailid.value;
 var b = document.f.pwd.value;
  var c = document.f.cpwd.value;
var e = document.f.phno.value;
var x=document.f.emailid.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf("."); 
 if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address");  
return false;
  
  } 
if(id=="")
 {
   alert("Employee Code should not be empty!!!");
   document.f.eid.focus();
   return false;
 }
if(id.length!=4)
 {  alert("Employee Code must contain than 4 digits!!!");
   
   document.f.eid.focus();
   return false;
 }


 if(a=="")
 {
   alert("Fullname filed should not be empty!!!");
   document.f.fname.focus();
   return false;
 }

  if(b.length==0)
 {
   alert("Password filed should not be empty!!!");
   document.f.pwd.focus();
   return false;
 }

  if(c!=b)
 {
   alert("Password and Confirm Password must be equal!!!");
   document.f.cpwd.focus();
   return false;
 }
if(isNaN(e))
  {
   alert("Mobile no must be a number!!!");
   document.f.phno.focus();
   return false;
 }
 if(e.length!=10)
  {
   alert("Mobile no contains 10 digits only!!!");
   document.f.phno.focus();
   return false;
 }
 if(e.charAt(0)!='7' && e.charAt(0)!='8' && e.charAt(0)!='9')
 {
   alert("Mobile no must be started with 7 or 8 or 9!!!");
   document.f.phno.focus();
   return false;
 }

}
function validatefname()
{
 var a = document.getElementById("fname").value;
 if(a.length==0)
 {
   document.getElementById("err1").innerHTML = "Please Enter Username";
 document.getElementById("err1").style.color="blue";
 document.getElementById("err1").style.fontSize=20;
document.getElementById("fname").focus();

 }
 else
 {
  document.getElementById("err1").innerHTML = "";
 }

}
function validatepwd()
{
 var b = document.getElementById("pwd").value;

var c = document.getElementById("cpwd").value;
 if(b.length==0)
 {
   document.getElementById("err2").innerHTML = "Please Enter Password";
 document.getElementById("err2").style.color="blue";
 document.getElementById("err2").style.fontSize=20;
}
else
 {
  document.getElementById("err2").innerHTML = "";
 }
validatecpwd();
}
function validatecpwd()
{
var b = document.getElementById("pwd").value;
var c = document.getElementById("cpwd").value;

if(c.length==0)
{
document.getElementById("err3").innerHTML = "Confirm Password should not be Empty!";
 document.getElementById("err3").style.color="blue";
 document.getElementById("err3").style.fontSize=20;

}
else
 {
  document.getElementById("err3").innerHTML = "";
 }
if(b!=c)
{
document.getElementById("err3").innerHTML = "Password and Confirm Password should be same";
 document.getElementById("err3").style.color="blue";
 document.getElementById("err3").style.fontSize=20;

}
else
{
document.getElementById("err3").innerHTML = "";
   
}
 
 
}
function validateeid()
{
var i=document.getElementById("eid").value;
if(i.length==0)
{
document.getElementById("err4").innerHTML = "Enter Employee Code";
 document.getElementById("err4").style.color="blue";
 document.getElementById("err4").style.fontSize=20;
}
else if(i.length!=4)
{
document.getElementById("err4").innerHTML = "Employee Code must contains 4 digits";
document.getElementById("err4").style.color="blue";
 document.getElementById("err4").style.fontSize=20;
}
else
{
document.getElementById("err4").innerHTML = "";

}
}

</script>
</head>
<body>

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
  <b>
  You are succesfully registered</b>
</body>
</html>