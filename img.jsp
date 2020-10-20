
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%
try {
    String id;
    String empid=(String)session.getAttribute("empid");
    String lempid=(String)session.getAttribute("lempid");
    String mempid=(String)session.getAttribute("mempid");
    if(empid!=null)
    {
        id=empid;
    }
    else if(lempid!=null)
    {
        id=lempid;
    }
    else
    {
        id=mempid;
    }
   
            Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "lasya");
          PreparedStatement ps = con.prepareStatement("select photo from companydetails where empid=?");
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();
            rs.next();
            Blob b = rs.getBlob("photo");
            response.setContentType("image/jpg");
            response.setContentLength((int) b.length());
            InputStream is = b.getBinaryStream();
            OutputStream os = response.getOutputStream();
            byte buf[] = new byte[(int) b.length()];
            is.read(buf);
            os.write(buf);
            os.close();
          }
   catch(Exception e)
   {
       System.out.println(e);
   }
%>