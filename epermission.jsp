<%@ page import="java.sql.*" %>
<%

int empid=Integer.parseInt((String)session.getAttribute("empid"));

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Class Loaded");
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "lasya");
	 System.out.println("Connection Established");

	%>
        <html>
<head>
<title>RLP Tech Development</title>
</head> 
<body><center>
    Raise your Permission
    <form action="eperm.jsp" method="post">  
        Welcome <%=empid%><br><br>
        Enter Category<input type="text" name="category" id="category" required><br><br>
       Start Date for Leave<input type="date" name="date1" required><br><br>
      End Date for Leave<input type="date" name="date2" required><br><br>
      Enter Duration<input type="text" name="duration" id="duration" required><br><br>
      
       <textarea name="reason" placeholder="Enter your Reason for applying" required rows="20" cols="50"></textarea>
       <br><br> 
       <input type="submit" value="Submit">
    </form>   
</center>
</body>
        </html>
        
        <%
}
catch(Exception e)
{
	System.out.println(e);
}

%>