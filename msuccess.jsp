<%@ page import="java.sql.*" %>
<html> 
<head>
<title>RLP Tech Development</title>
</head>
<body>
<%
String  mid=(request.getParameter("mid"));
String pwd = request.getParameter("pwd");
System.out.println(mid+"!!!!,"+pwd);
//session.setAttribute("mempid",mid);

 try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Class Loaded");
Connection con = null;

con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "lasya");

System.out.println("Connection Established");

PreparedStatement pstmt = con.prepareStatement(" select * from companydetails where empid=? and password=? and designation=?");
pstmt.setString(1,mid);
pstmt.setString(2,pwd);
pstmt.setString(3,"MANAGER");
ResultSet rs = pstmt.executeQuery();
System.out.println(mid+"#,#"+pwd);

if(rs.next())
{
	System.out.println(mid+","+pwd);
session.setAttribute("mempid",mid);

response.sendRedirect("mandashboard.jsp");

//getServletContext().getRequestDispatcher("/mandashboard.jsp").forward(request,response);

}
else
{
	
RequestDispatcher rd = request.getRequestDispatcher("manlogin.jsp");
rd.include(request,response);
out.println("<center><b>Login Invalid!!!</b><center><br>");

}
}
catch(Exception e)
{
out.println(e.getMessage()); 
}
%>


</body>
</html>