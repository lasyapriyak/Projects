<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.*,java.util.*"%>
<%
   int empid=Integer.parseInt((String)session.getAttribute("empid"));
 String category=request.getParameter("category");
   String d1=request.getParameter("date1");
    String d2=request.getParameter("date2");
     String duration=request.getParameter("duration");
    String reason=request.getParameter("reason");
    System.out.println(d1+","+d2+","+reason);
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Class Loaded");
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "lasya");
	 System.out.println("Connection Established");
         LocalDateTime now = LocalDateTime.now();  
        //System.out.println("Before Formatting: " + now);  
        DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy");  
        String datee = now.format(format); 
         
         
         System.out.println(datee);
        int y=(int)(Math.random()*999999+1);
         System.out.println(y);
       
 PreparedStatement p=con.prepareStatement("insert into emppermissions values(?,?,?,?,?,?,?,?,?,?,?)");
         p.setInt(1,y);
         p.setInt(2,empid);
         p.setString(3,category);
         p.setString(4,datee);
         p.setString(5,d1);
         p.setString(6,d2);
         p.setString(7,duration);
         p.setString(8,reason);
         p.setString(9,"PROCESSING");
         p.setString(10,"PROCESSING");
         p.setString(11,"PROCESSING");
         
         int x=p.executeUpdate();
 //        response.sendRedirect("empdashboard.jsp");  
out.println("Applied for Permission.Hope for the Positive Result");
}
catch(Exception e)
{
    out.println(e);
}   
    
    
%>