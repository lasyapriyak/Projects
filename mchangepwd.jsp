<%@page import="java.sql.*"%>
<html>
    <head>
        <title>RLP Tech Development</title>
    </head>
    <body bgcolor="white">
        <form method="post" action="changepwd1.jsp">
  
       <table align="center" width="40%" height="20%">
           <tr>
               <td><b>Employee Id</b></td>
               <%
                   String mempid=(String)session.getAttribute("mempid");
                   application.setAttribute("cid",mempid);
                   %>
                   <td><%=mempid%></td>
               
           </tr>
         
          <tr>
              <td><b>Enter Old Password</b></td>
              <td><input type="password" name="opwd" required></td>
          </tr>
           <tr>
              <td><b>Enter New Password</b></td>
              <td><input type="password" name="npwd" required></td>
          </tr>
            <tr>
              <td align="center"><input type="submit" value="Change"></td>
              <td align="center"><input type="reset" value="Clear"></td>
          </tr>
      </table>
      
  </form>  
        
        
        
        
        
    </body></html>