<%@page import="java.sql.*"%>
<style>
    a.visited{
       color: midnightblue;
    }
    a{
        color:midnightblue;
    }
    </style>
<%
    int mempid=Integer.parseInt((String)session.getAttribute("mempid"));

try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Class Loaded");
Connection con = null;

con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "lasya");

System.out.println("Connection Established");
%>

<h2><center>PERMISSIONS OF EMPLOYEES</center></h2>

<table cellspacing='3' cellpadding='10'><tr bgcolor="#a5c6d9">
           <th>PERMISSION ID</th> <th>MANAGER ID</th>
<th>LEADER ID</th>

<th>EMPLOYEE ID</th>
       <th>CATEGORY</th>
    <th>SUBMITTED DATE</th>
  <th>DURATION</th>
   <th>LEADER STATUS</th>
   <th>MANAGER STATUS</th>
   <th>FINAL STATUS</th>
   <th colspan='2'>Status</th></tr>
<%
int c=0;

PreparedStatement pstmt1 = con.prepareStatement(" select * from leadmanager where mempid=? ");
pstmt1.setInt(1, mempid);
ResultSet r1=pstmt1.executeQuery();
while(r1.next()){
    PreparedStatement pstmt2 = con.prepareStatement(" select * from empleader where lempid=? ");
pstmt2.setInt(1,r1.getInt("lempid") );
ResultSet r2=pstmt2.executeQuery();
while(r2.next()){
PreparedStatement pstmt = con.prepareStatement(" select * from emppermissions where empid=?");
pstmt.setInt(1,r2.getInt("empid"));
ResultSet r=pstmt.executeQuery();
while(r.next()){
int p=r.getInt("permid");
    String urll="viewusers.jsp?pid="+p+"";
     System.out.println(urll);     

 String laccepturl="maccept.jsp?pid="+p+"";
 String lrejecturl="mreject.jsp?pid="+p+"";
           System.out.println(laccepturl+","+lrejecturl);     
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
    
<td><a href="<%=urll%>" target="_new"><%=r.getInt("permid")%></a></td>
        <td><%=mempid%></td>
	<td><%=r1.getInt("lempid")%></td>
	<td><%=r.getInt("empid")%></td>
	<td><%=r.getString("category")%></td>
	<td><%=r.getString("createddate")%></td>
	<td><%=r.getString("duration")%></td>
	
	<td><%=r.getString("status1")%></td>
	<td><%=r.getString("status2")%></td>
	<td><%=r.getString("finalstatus")%></td>
        <td><a href="<%=laccepturl%>">Accept</a></td>
        <td><a href="<%=lrejecturl%>">Reject</a></td></tr>
      </div>
  </div>
  <%
  }
%>

       
<%
}
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
