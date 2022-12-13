<%-- 
    Document   : CITY_master
    Created on : 17 Oct, 2022, 2:51:40 PM
    Author     : softtech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
           Connection cn;
           Statement st;
           ResultSet rs;
           
           String Email,password;
            
                 Class.forName("com.mysql.jdbc.Driver");
                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
                 st=cn.createStatement();
                 
                 
                 
                     Email=request.getParameter("Email");
                     password=request.getParameter("Pass");
                     
                     
                     
                     rs=st.executeQuery("select * from candidate_master where cand_email='"+Email+"' and password='"+password+"'");
//                    out.print("select * from candidate_master where cand_email='"+Email+"' and password='"+password+"'");
                     if(rs.next())
                     {
                         session.setAttribute("id", rs.getString(1));
                                 
                     
                         out.println("Login Successful");
                          response.sendRedirect("SelectTemplate.jsp");
                     }
                     else
                     {out.println("Login Not successful");
                     }
                 
               
      
      %>
    </body>
</html>
