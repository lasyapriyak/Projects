
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@ page import="java.sql.*,java.io.*" %>
<%
String empid=request.getParameter("empid");

String name=request.getParameter("name"); 
String email=request.getParameter("emailid");
String designation=request.getParameter("designation");

String pwd = request.getParameter("pwd");

String gender=request.getParameter("gender");

String address = request.getParameter("address");
String mobileno=request.getParameter("mobileno");

//final Part filePart = request.getPart("filee");
//final String fileName = getFileName(filePart);
//System.out.println(fileName);

   try
{


Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver Class Loaded");
Connection con = null;

con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "servlet", "servlet");

System.out.println("Connection Established");
PreparedStatement p=con.prepareStatement("select * from companydetails where empid=?");
p.setString(1,empid);

ResultSet r = p.executeQuery();
if(r.next()){
out.println("<center><b>User Already Registered!!!</b><center><br>");

getServletContext().getRequestDispatcher("/register.jsp").include(request,response);

}
else{

PreparedStatement pstmt = con.prepareStatement(" insert into companydetails values(?,?,?,?,?,?,?,?) ");
pstmt.setString(1,empid);
pstmt.setString(2,name);
pstmt.setString(3,email);
pstmt.setString(4,designation);
pstmt.setString(5,pwd);
pstmt.setString(6,gender);
pstmt.setString(7,address);
pstmt.setString(8,mobileno);
//File file=new File(fileName);  // Place the attached file "sample.txt" in E drive
//System.out.println("$$"+file.getAbsolutePath());
//
//FileReader fr= new FileReader(file);  // File Reader
// 
// 
// FileInputStream fis=new FileInputStream(file);   
// 
//// File Input Stream
//
//pstmt.setCharacterStream(9,fr,(int)file.length());  
int i=pstmt.executeUpdate();

getServletContext().getRequestDispatcher("/success.jsp").forward(request,response);


}
}
catch(Exception e)
{
out.println(e.getMessage()); 
}
 %>
 <%!
//  //private final  Logger LOGGER = 
//    //        Logger.getLogger(reg.jsp.getCanonicalName());
//  
// private String getFileName(final Part part) {
//	    final String partHeader = part.getHeader("content-disposition");
//	    LOGGER.log(Level.INFO, "Part Header = {0}", partHeader);
//	    for (String content : part.getHeader("content-disposition").split(";")) {
//	        if (content.trim().startsWith("filename")) {
//	            return content.substring(
//	                    content.indexOf('=') + 1).trim().replace("\"", "");
//	        }
//	    }
//	    return null;
//	}


%>