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


#dd
{
 width:40%;
text-align: center;
valign:middle;
 padding: 70px 0;
margin: auto;
}


    .loginbox{
    width: 400px;
    height: 420px;
    background: #f2f2f2;
    color: black;
    top: 60%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
}

.avatar{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}

h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}

.loginbox p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.loginbox input{
    width: 100%;
    margin-bottom: 20px;
}

.loginbox input[type="number"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #000;
    font-size: 16px;
}
.loginbox input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: gray;
    color: #FFF;
    font-size: 18px;
    border-radius: 20px;
}
.loginbox input[type="submit"]:hover
{
    cursor: pointer;
    background: black;
    color: #fff;
}
.loginbox a{
    text-decoration: none;
    font-size: 12px;
    line-height: 20px;
    color: darkgrey;
}

.loginbox a:hover
{
    color: #ffc107;
}
</style>
<script type="text/javascript">
function valid()
{
 var a = document.ff.eid.value;
 var b = document.ff.pwd.value;

if(a=="")
 {
   alert("Employee Id field should not be empty!!!");
   document.ff.eid.focus();
   return false;
 }

  if(b.length==0)
 {
   alert("Password field should not be empty!!!");
   document.ff.pwd.focus();
   return false;
 }
}
function validateeid()
{
 var a = document.getElementById("eid").value;
 if(a.length==0)
 {
   document.getElementById("err1").innerHTML = "Please Enter Employee Id";
 document.getElementById("err1").style.color="blue";
 document.getElementById("err1").style.fontSize=20;
document.getElementById("eid").focus();

 }
 else
 {
  document.getElementById("err1").innerHTML = "";
 }

}
function validatepwd()
{
var b = document.getElementById("pwd").value;
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


<div class="loginbox">
   
<center>
    
<img src="prof.png" class="avatar">
        <h1>Employee Login</h1>

<form name="ff" action="esuccess.jsp" method="post" onsubmit="return valid()">
<table cellspacing=20>
<tr><td colspan=2></td></tr>
<tr><td>Enter Employee Id</td><td>
<input type="number" id="eid" name="eid" placeholder="Enter Employee Id" onchange="validateeid()"><span id="err1"></span></td></tr>
<tr><td>Enter Password</td><td>
<input type="password" name="pwd" id="pwd" placeholder="Enter Password" onchange="validatepwd()"><span id="err2"></span></td></tr></table><br><br>
<input type="submit" value="Login">
</form>
</center>
</div>
</body> 
</html>


