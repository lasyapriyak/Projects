<%@page import="java.sql.*"%>
<%
    String permid=request.getParameter("pid");
    System.out.println("# "+permid);
    try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Class Loaded");
Connection con = null;

con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "lasya");

System.out.println("Connection Established");

PreparedStatement pstmt = con.prepareStatement(" update emppermissions set status2=? where permid=? ");
pstmt.setString(1,"REJECTED");
pstmt.setString(2,permid);
int u=pstmt.executeUpdate();
PreparedStatement p=con.prepareStatement("select status1,status2,finalstatus from emppermissions where permid=?");
p.setString(1,permid);
ResultSet r=p.executeQuery();
if(r.next())
{
    PreparedStatement pstmt1 = con.prepareStatement(" update emppermissions set finalstatus=? where permid=? ");
pstmt1.setString(2,permid);

    if((r.getString("status2").equals("ACCEPTED")))
    {
        pstmt1.setString(1,"ACCEPTED");
    }
   else if( r.getString("status2").equals("REJECTED") )
     {
                pstmt1.setString(1,"REJECTED");

    }
      else
   {
       pstmt1.setString(1, "PROCESSING");
   }
    
    int u1=pstmt1.executeUpdate();

}

response.sendRedirect("mpermission.jsp");
}
    catch(Exception e)
    {
        System.out.println(e);
    }

%>