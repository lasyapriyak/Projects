<%@page import="java.sql.*"%>
<%
String empid=(String)application.getAttribute("cid");

String opwd = request.getParameter("opwd");
String npwd = request.getParameter("npwd");
System.out.println(empid+" # "+opwd+" # "+npwd);

try
{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "lasya");  
	 System.out.println("Connection Established");
	  
	  PreparedStatement pstmt = con.prepareStatement("select * from companydetails where empid=? and password=?");
	  pstmt.setString(1,empid);
	  pstmt.setString(2,opwd);
	  ResultSet rs = pstmt.executeQuery();
	  if(rs.next())
	  {
		  PreparedStatement pstmt1 = con.prepareStatement("update companydetails  set password=? where empid=?");
		  pstmt1.setString(1,npwd);
		  pstmt1.setString(2,empid);
		  int i = pstmt1.executeUpdate();
                  if(i>0)
		  {
			  %>
				<h3>Password Updated Successfully</h3><br>
		
				<%
                      
		  }
		  else
		  {
			  %>
			<h3>Password has not been updated</h3><br>
	
				<%   
                      
                        }
	  }
	  else
	  {
		  %>
			<h3>Current Password is incorrect</h3><br>
	
			<% 
              
	  }
}
catch(Exception e)
{
    System.out.println(e);
}

%>