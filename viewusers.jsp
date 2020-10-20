<%@ page import="java.sql.*" import="java.io.*" %>

<html>
<head></head>
<body>

<center>LETTER</center>
<%
    
    int permid=Integer.parseInt((String)request.getParameter("pid"));
    System.out.println(permid);
   try
{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  System.out.println("1....Driver Classes Loaded");
  
  Connection con = null;
  
  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe" , "system" , "lasya");
  System.out.println("1.....Connection Established");
  PreparedStatement ps=con.prepareStatement("select * from emppermissions where permid=?");
  ps.setInt(1,permid);
  ResultSet rs=ps.executeQuery();
  PreparedStatement p=con.prepareStatement("select name,email,mobileno from companydetails where empid=?");
  
  
  if(rs.next()){
  

  
p.setInt(1,rs.getInt("empid"));
ResultSet r=p.executeQuery();
if(r.next()){




%>
<pre>
																	Place: Vaddeswaram;
																	Date: <%=rs.getString("createddate")%>.
	
		From
		<%=rs.getInt("empid")%>;
		To
		The Manager/Leader;
		
		Sub:Requesting permission in the view of <%=rs.getString("category")%> - reg
		
		I am <%=r.getString("name")%>(Employee Id-<%=rs.getInt("empid")%>) requesting permission to get leave on mentioned dates.
		<%=rs.getString("reason")%>.Requesting leave from <%=rs.getString("permstartdate")%> to <%=rs.getString("permenddate")%> of <%=rs.getString("duration")%>.Please grant my permission.
		
		Thanking you
		
																	Yours Faithfully,
																	<%=r.getString("name")%>(Employee Id-<%=rs.getInt("empid")%>)
                                                                                                                                        <%=r.getString("email")%>
                                                                                                                                                <%=r.getInt("mobileno")%>
	
	
</pre>
</body>
</html>
<%
}
  }
}
   catch(Exception e)
   {
       System.out.println(e);
   }
%>