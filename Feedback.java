
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Feedback extends HttpServlet
{
    public void service(HttpServletRequest req,HttpServletResponse res)throws IOException, ServletException
  {
  res.setContentType("text/html");
  PrintWriter out=res.getWriter();
     
String fname=req.getParameter("fname"); 
String lname=req.getParameter("lname");
String company=req.getParameter("company"); 
String email=req.getParameter("email");
String msg=req.getParameter("msg"); 
  try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Class Loaded");
 Connection con = null;

con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "lasya");

System.out.println("Connection Established");
int hid=(int) (Math.random()*9999);
PreparedStatement pstmt = con.prepareStatement("insert into helpp values(?,?,?,?,?,?)");
pstmt.setString(2,fname);
pstmt.setString(3,lname);
pstmt.setString(4,email);
pstmt.setString(5,company);
pstmt.setString(6,msg);

pstmt.setInt(1,hid);
int u=pstmt.executeUpdate();
res.sendRedirect("permissionmain.jsp");
}
  catch(Exception e)
  {
      System.out.println(e);
  }
  }
}