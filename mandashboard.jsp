<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
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
<%
    
    String mempid=((String)session.getAttribute("mempid"));

    //out.println(empid);
    System.out.println(" EMp id: %^ "+mempid+" empdashoard");
if(mempid==null)
{
    //out.println("Session Expired");
  response.sendRedirect("manlogin.jsp");}
else{
    //out.println(empid);
    %>
    <%=mempid%>
    <html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: "Open Sans", sans-serif;
}

/* Fixed sidenav, full height */
.sidenav {
  height: 100%;
  width: 220px;
  position: fixed;
  color:white;
  font-size: 24px;
float:left;
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
    top: 110px;
    left: calc(50% - 75px);

}
</style>

</head>
<body>
    
<div class="sidenav" align="left">
  <%

     /*try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "lasya");
            PreparedStatement ps = con.prepareStatement("select photo from companydetails where empid = ?");
          
            ps.setInt(1,mempid);
            ResultSet rs = ps.executeQuery();
            rs.next();
            Blob b = rs.getBlob("photo");
            response.setContentType("image/jpeg");
            response.setContentLength((int) b.length());
            InputStream is = b.getBinaryStream();
            OutputStream os = response.getOutputStream();
            byte buf[] = new byte[(int) b.length()];
            is.read(buf);
            
           // os.write(buf);
            os.close();
            
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }*/
    %>  
    &nbsp;&nbsp;Welcome <%=mempid%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MANAGER<BR><BR>
  <a href="img.jsp"><img src="img.jsp" class="avatar"></a>
  <br><Br><br>  <br>
    <a style="text-decoration:none;color: white" href="mandashboard.jsp" id="home">Home</a>
 

 <button class="dropdown-btn">Permissions
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a href="mpermission.jsp" target="frame2">View Permissions of Employees</a>
   
  </div>

 <a style="text-decoration:none;color: white" href="mchangepwd.jsp" target="frame2">Change Password</a>
 

 <a style="text-decoration:none;color: white" href="mlogout.jsp" id="logout">Logout</a>&nbsp&nbsp&nbsp

</div>
<!--    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Welcome Manager <%=mempid%></div><br><bR>-->
<div class="frr">
  <iframe  name="frame2" id="fit" width="1280dp"  height="675" ></iframe>
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
    