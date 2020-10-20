
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "regist", urlPatterns = {"/regist"})
@MultipartConfig
public class regist extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
String empid=request.getParameter("empid");

String fullname=request.getParameter("fullname"); 
String email=request.getParameter("email");
String designation=request.getParameter("designation");

String pwd = request.getParameter("pwd");

String gender=request.getParameter("gender");

String address = request.getParameter("address");
String mobileno=request.getParameter("mobileno");


        try {
           
            Part p =  request.getPart("fullname");
            Scanner scanner  = new Scanner( p.getInputStream());
            String playername = scanner.nextLine(); 
            
            
            Part photo =  request.getPart("photo");
                        
           
            // Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "lasya");
            con.setAutoCommit(false);
            
PreparedStatement pp=con.prepareStatement("select * from companydetails where empid=?");
pp.setString(1,empid);

ResultSet r = pp.executeQuery();
if(r.next()){
out.println("<center><b>User Already Registered!!!</b><center><br>");

getServletContext().getRequestDispatcher("/register.jsp").include(request,response);

}
else{

PreparedStatement pstmt = con.prepareStatement(" insert into companydetails values(?,?,?,?,?,?,?,?,?) ");
pstmt.setString(1,empid);
pstmt.setString(2,fullname);
pstmt.setString(3,email);
pstmt.setString(4,designation);
pstmt.setString(5,pwd);
pstmt.setString(6,gender);
pstmt.setString(7,address);
pstmt.setString(8,mobileno);
pstmt.setBinaryStream(9, photo.getInputStream(), (int)  photo.getSize());
           
int i=pstmt.executeUpdate();

getServletContext().getRequestDispatcher("/success.jsp").forward(request,response);


            con.commit();
            con.close();
        } 
        }
        catch(Exception ex) {
            System.out.println(ex.getMessage());
        }
        finally {            
            out.close();
        }
    }
}