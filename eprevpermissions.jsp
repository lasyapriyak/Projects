<%--<%@page import="java.sql.*"%>
<%
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        System.out.println("Driver loaded");
        Connection con=null;
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","lasya");
       System.out.println("Connection");
       PreparedStatement ps=con.prepareStatement("select * from emppermissions");
       ResultSet rs=ps.executeQuery();
      out.println("<table border=2 cellpadding=10 cellsapcing=10>");
          while(rs.next())
{
	%>
	<tr align=center>
	<td><%=rs.getInt("permid")%></td>
	<td><%=rs.getInt("empid")%></td>
	<td><%=rs.getString("category")%></td>
	<td><%=rs.getString("createddate")%></td>
	<td><%=rs.getString("permstartdate")%></td>
	<td><%=rs.getString("permenddate")%></td>
	<td><%=rs.getString("duration")%></td>
	<td><%=rs.getString("reason")%></td>
	<td><%=rs.getString("status1")%></td>
	<td><%=rs.getString("status2")%></td>
	<td><%=rs.getString("finalstatus")%></td>
	<td>
	<a href="deleteuser.jsp?id=<%=rs.getString("empid")%>">Delete</a>
	</td>
	</tr>
	 
           
           
           
           
       <%    
       }
       out.println("</table>");
        
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
    
    %>--%>



<%@ page import="java.sql.*" import="java.io.*" %>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    a.visited{
       color: midnightblue;
    }
    a{
        color:midnightblue;
    }
    </style>
</head>
<body>
<center>
<h2>PREVIOUS PERMISSIONS</h2>

<!-- <div id="btnContainer">
  <button class="btn" onclick="listView()"><i class="fa fa-bars"></i> List</button> 
</div> -->
<br>
<%

int empid=Integer.parseInt((String)session.getAttribute("empid"));


try
{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  System.out.println("1....Driver Classes Loaded");
  
  Connection con = null;
  
  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe" , "system" , "lasya");
  System.out.println("1.....Connection Established");%>
      <table cellspacing='3' cellpadding='10'><tr bgcolor="#a5c6d9">
           <th>PERMISSION ID</th>
<th>EMPLOYEE ID</th>
       <th>CATEGORY</th>
    <th>SUBMITTED DATE</th>
<th>PERMISSION START DATE</th>
  <th>PERMISSION END DATE</th>
  <th>DURATION</th>
   <th>LEADER STATUS</th>
   <th>MANAGER STATUS</th>
   <th>FINAL STATUS</th>
   </tr>
   
<%
PreparedStatement ps = con.prepareStatement("select * from emppermissions where empid=?");
ps.setInt(1,empid);
int c=0;
ResultSet rs = ps.executeQuery();
while(rs.next())
{
    int p=rs.getInt("permid");
    String urll="viewusers.jsp?pid="+p+"";
    System.out.println(urll);            
c++;
%>
<div class="row">
    <%if(c%2==0){%>
       <tr bgcolor="#fff">
<%}
    else{%>
       <tr bgcolor="#bbb">
    
    <%
    }   
%>
    
<td><a href="<%=urll%>" target="_new"><%=rs.getInt("permid")%></a></td>
	<td><%=rs.getInt("empid")%></td>
	<td><%=rs.getString("category")%></td>
	<td><%=rs.getString("createddate")%></td>
	<td><%=rs.getString("permstartdate")%></td>
	<td><%=rs.getString("permenddate")%></td>
	<td><%=rs.getString("duration")%></td>
	
	<td><%=rs.getString("status1")%></td>
	<td><%=rs.getString("status2")%></td>
	<td><%=rs.getString("finalstatus")%></td>
     </tr>
      </div>
  </div>
  <%
  }
%>
 </table>
       
<%
}
catch(Exception e)
{
	System.out.println(e);
}
%>


</body>
</html>