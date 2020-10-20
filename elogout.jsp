<%
    
    session.invalidate();
    System.out.println("Session Invalidated");
//    String empid=(String)session.getAttribute("empid");
//    System.out.println("employee id: "+empid);
//    
    response.sendRedirect("emplogin.jsp");
    %>