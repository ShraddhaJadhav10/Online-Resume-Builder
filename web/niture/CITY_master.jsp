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
           
           String CITY_ID,STATE_ID,CITY_NM,b;
            b =request.getParameter("b");
           try
           {
                 Class.forName("com.mysql.jdbc.Driver");
                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
                 st=cn.createStatement();
                 
                 
                 if(b.equals("Insert"))
                 {
                     CITY_ID=request.getParameter("CITY_ID.text");
                     STATE_ID=request.getParameter("d1");
                     CITY_NM=request.getParameter("CITY_NM.text");
                     
                     
                     int x= st.executeUpdate("insert into CITY values("+CITY_ID+",'"+STATE_ID+"','"+CITY_NM+"')");
                     if(x>0)
                         out.println("Insert  successfully...");
                     else
                         out.println("not insert successfuly");
                 
                 
                 }
                 else
                     if(b.equals("Update"))
                     {
                          CITY_ID=request.getParameter("CITY_ID.text");
                     STATE_ID=request.getParameter("d1");
                     CITY_NM=request.getParameter("CITY_NM.text");
                     
                       
                          int x= st.executeUpdate("update CITY set STATE_ID='"+STATE_ID+"',CITY_NM='"+CITY_NM+"' where CITY_ID="+CITY_ID);
                           if(x>0)
                               out.println(" updated successfully");
                           else
                               out.println(" not updated successfully");
                     }
                     else
                         if(b.equals("Delete"))
                         {
                              CITY_ID=request.getParameter("CITY_ID.text");
                               int x=st.executeUpdate("delete from CITY where CITY_ID="+CITY_ID);
                               if(x>0)
                                     out.println("deleted successfully");
                               else
                                     out.println(" deleted successfully");
                                   
                         
                         
                         
                         }
                       
           
             response.sendRedirect("CITY_des.jsp");
           
           
           }
           catch(SQLException ex)
           {
           
           }
          
      
      %>
    </body>
</html>
