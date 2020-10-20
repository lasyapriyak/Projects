<%@page import="java.sql.*"%>
<%
String lempid=request.getParameter("lid");

String lpwd = request.getParameter("lpwd");
System.out.println(lempid+","+lpwd);

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Class Loaded");
Connection con = null;

con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "lasya");

System.out.println("Connection Established");

PreparedStatement pstmt = con.prepareStatement(" select * from companydetails where empid=? and password=? and designation=?");
pstmt.setString(1,lempid);
pstmt.setString(2,lpwd);
pstmt.setString(3,"LEADER");
ResultSet rs = pstmt.executeQuery();
System.out.println(lempid+","+lpwd);
if(rs.next())
{
    session.setAttribute("lempid",lempid);
response.sendRedirect("ldashboard.jsp");
}
else
{
    response.sendRedirect("leadlogin.jsp");
}
}
catch(Exception e)
{
    System.out.println(e);
}

%>