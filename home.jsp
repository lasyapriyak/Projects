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
<br><br><center><h1>About</h1></center>
<br>
<br>

<p> 

<font face="Times New Roman">EMPLOYEE MODULE:<br>
<pre>
<font face="Times New Roman">
      When an employee login with valid credentials, there will be dashboard showcasing employee Name, Employee Image and the buttons as described below.
	
	•PREVIOUS PERMISSIONS:
		Employee can access previous Permissions, by clicking this button. There will be a list of permissions with unique ID generated at the time of raising request.
	•RAISE PERMISSION:
		Employees can raise a request, when they click this button. They will be given text areas, where they can type the request information. When they click the submit
 button, letter with unique ID will be submitted to Leader. The raised request should be displayed in the previous Permissions list.

</pre>
</p>


<br>
<br>



<p><font face="Times New Roman">LEADER MODULE:<br>
<pre>
LEADER MODULE:
     When an employee login through leader button with valid credentials, he/she can see the list of Pending Permissions applied by the employees working under him.	

	•PENDING PERMISSIONS:
		When an employee submitted a permission in employee module leader can view those permissions in his dashboard where a drop-down list will show the list of employees
 who raised the permissions.Leader can click on any permission so that leader he can view, approve or delete permission. When a leader rejected the request, there will be a status change of 
permission in previous permission list in employee module. On the other hand, when leader approved the raised permission, the letter with unique ID will be submitted to Manager.

</pre></p>



<br>
<br>


<br>
<br>

<p><font face="Times New Roman">MANAGER MODULE:<br>
<pre>
MANAGER MODULE:
	•PREVIOUS PERMISSIONS:
		Here Manager can view a list of employees who applied for permissions under which a list of permissions applied by an employee.

	•PENDING PERMISSIONS:
		When an employee login through Manager button with valid credentials, he/she can see the list of Pending Permissions applied  by the Employees working under 
designated leaders. Manager can see both the employee who raised the permission and the leader of employee. Manager  will validate the Permission and Unique ID generated at the time
 of raising a permission. Whatever the response of Manager, it will be redirected to  both leader and Employee “PERMISSION WITH UNIQUE-ID XXXXXXXX IS APPROVED/REJECTED”
 and the status of permission in both Leader module  and Employee Module need to be updated corresponding to the response of Manager.

</pre></p>
<br>
<br>
<br>

</body>

</html>
