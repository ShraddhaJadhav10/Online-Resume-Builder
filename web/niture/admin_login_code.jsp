<%-- 
    Document   : admin_login_code
    Created on : Nov 9, 2022, 4:31:15 PM
    Author     : SHRADDHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           
           String uname,pass;
           uname=request.getParameter("txt_admin_name");
           pass=request.getParameter("txt_Pass");
           if((uname.equals("admin"))&& (pass.equals("12345")))
           {
               out.println("Login successfully...");
           }
           else
           {
              out.println("Login failed...."); 
           
           }
           response.sendRedirect("admin_dashboard.jsp");
            %>
    </body>
</html>
