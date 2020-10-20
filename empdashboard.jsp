
<%@page import="java.io.*"%>
<script>
    window.addEventListener( "pageshow", function ( event ) {
  var historyTraversal = event.persisted || 
                         ( typeof window.performance != "undefined" && 
                              window.performance.navigation.type === 2 );
  if ( historyTraversal ) {
    // Handle page restore.
    window.location.reload();
  }
});
    </script>


<!--    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>

    <%@ page import="java.sql.*" %>

    <!DOCTYPE html>
    <html>
    <head>
    <title>Insert title here</title>
    </head>
    <body>
    Hi Employee

    <%
    String empid=(String)session.getAttribute("empid");
   
    System.out.println(" EMp id: %^ "+empid+" empdashoard");
if(empid==null)
{
    out.println("Session Expired");
     request.getRequestDispatcher("emplogin.jsp").include(request, response);
}
else{
    //out.println(empid);
    %>
    <%=empid%>
    <form action="epermission.jsp" method="post" name="eform">
    <input type="submit" value="Raise Permission">
    </form>
    <form action="eprevpermissions.jsp" method="post" name="eprevform">
    <input type="submit" value="Previous Permission">
    </form>
    </body>
    </html>-->
    <!DOCTYPE html>
<html>
<head>
  <title>KL University</title> <link rel="icon" href="klu.png" type="image/icon type">

<style>
body {
  font-family: "Open Sans", sans-serif;
}

/* Fixed sidenav, full height */
.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
float:left;
color:white;

  font-size:24px;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #3a454b;
  overflow-x: hidden;
  padding-top: 20px;
}

/* Style the sidenav links and the dropdown button */
.sidenav a, .dropdown-btn {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: white;
  display: block;
  border: none;
  background: none;
  width: 100%;
  text-align: left;
  cursor: pointer;
  outline: none;
}

/* On mouse-over */
.sidenav a:hover, .dropdown-btn:hover {
  color: white;
  background-color: #337ab7;
}
.frr
{
float:right;
}
/* Main content */
.main {
  margin-left: 200px; /* Same as the width of the sidenav */
  font-size: 20px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

/* Add an active class to the active dropdown button */
.active {
  background-color:#3a454b;
  color: white;
}

/* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */
.dropdown-container {
  display: none;
  background-color: #778899;
  padding-left: 8px;
}

/* Optional: Style the caret down icon */
.fa-caret-down {
  float: right;
  padding-right: 8px;
}

/* Some media queries for responsiveness */
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

.avatar{
    //width: 100px;
    height: 100px;
   // border-radius: 50%;
    position: absolute;
    top: 120px;
    left: calc(50% - 75px);
-webkit-transform:rotate(270deg);
  -moz-transform: rotate(270deg);
  -ms-transform: rotate(270deg);
  -o-transform: rotate(270deg);
  transform: rotate(270deg);

}
</style>

</head>
<body>
    <div>
<div class="sidenav" align="left">
   &nbsp;&nbsp;Welcome <%=empid%><br>&nbsp;&nbsp;&nbsp;&nbsp;EMPLOYEE<BR><BR>
   <style>
       .rotateimg180 {
  }
   </style>
   <a href="img.jsp"><img src="img.jsp" class="avatar"></a>

<br><br><Br><br><br>
   
    <a style="text-decoration:none;color: white" href="empdashboard.jsp" id="home">Home</a>
  <a style="text-decoration:none;color: white" href="notification.jsp" id="not" target="frame2">Notifications</a>
 

 <button class="dropdown-btn">Permissions
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a href="epermission.jsp" target="frame2">Raise Permissions</a>
    <a href="eprevpermissions.jsp" target="frame2">Previous Permissions</a>
  
  </div>
 <a style="text-decoration:none;color: white" href="echangepwd.jsp" target="frame2">Change Password</a>
   
 

 <a style="text-decoration:none;color: white" href="elogout.jsp" id="logout">Logout</a>&nbsp&nbsp&nbsp

</div>
<div class="frr">
 <iframe  name="frame2" id="fit" width="1300dp"  height="675" ></iframe>
</div>
</div>
<script>
/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
  this.classList.toggle("active");
  var dropdownContent = this.nextElementSibling;
  if (dropdownContent.style.display === "block") {
  dropdownContent.style.display = "none";
  } else {
  dropdownContent.style.display = "block";
  }
  });
}
</script>

</body>
</html> 
<%
}
%>


