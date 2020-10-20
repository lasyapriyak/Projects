<%@ page import="java.sql.*" %>
<html> 
<head>
    <title>RLP Tech Development</title>
</head>
<body>

<%
String empid=request.getParameter("eid");
//session.setAttribute("empid",empid);
String pwd = request.getParameter("pwd");
System.out.println(empid+","+pwd);
System.out.println(" $%^ "+empid+" esuccess");
if(empid==null)
{
    out.println("Session Expired");
     request.getRequestDispatcher("emplogin.jsp").include(request, response);
}
 try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Class Loaded");
Connection con = null;

con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "lasya");

System.out.println("Connection Established");

PreparedStatement pstmt = con.prepareStatement(" select * from companydetails where empid=? and password=? and designation=?");
pstmt.setString(1,empid);
pstmt.setString(2,pwd);
pstmt.setString(3,"EMPLOYEE");
ResultSet rs = pstmt.executeQuery();
System.out.println(empid+","+pwd);

if(rs.next())
{
	System.out.println(empid+","+pwd);
session.setAttribute("empid",empid);

response.sendRedirect("empdashboard.jsp");
//getServletContext().getRequestDispatcher("/empdashboard.jsp").forward(request,response);

}
else
{

out.println("<center><b>Login Invalid!!!</b><center><br>");
RequestDispatcher rd = request.getRequestDispatcher("emplogin.jsp");
rd.include(request,response);

}
}
catch(Exception e)
{
out.println(e.getMessage()); 
}
%>


</body>
</html>