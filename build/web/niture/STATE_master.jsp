<%-- 
    Document   : STATE_master
    Created on : 17 Oct, 2022, 2:51:56 PM
    Author     : softtech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import=" java.sql.*"%>
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
           
           String COUNTRY_ID,STATE_ID,STATE_NM,b;
            b =request.getParameter("b");
           try
           {
                 Class.forName("com.mysql.jdbc.Driver");
                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
                 st=cn.createStatement();
                 
                 
                 if(b.equals("Insert"))
                 {
                     COUNTRY_ID=request.getParameter("d1");
                     STATE_ID=request.getParameter("STATE_ID.text");
                     STATE_NM=request.getParameter("STATE_NM.text");
                     
                     
                     int x= st.executeUpdate("insert into STATE values("+STATE_ID+",'"+COUNTRY_ID+"','"+STATE_NM+"')");
                     if(x>0)
                         out.println("Insert  successfully...");
                     else
                         out.println("not insert successfuly");
                 
                 
                 }
                 else
                     if(b.equals("Update"))
                     {
                          COUNTRY_ID=request.getParameter("d1");
                     STATE_ID=request.getParameter("STATE_ID.text");
                     STATE_NM=request.getParameter("STATE_NM.text");
                     
                       
                          int x= st.executeUpdate("update STATE set STATE_NM='"+STATE_NM+"',COUNTRY_ID='"+COUNTRY_ID+"' where STATE_ID="+STATE_ID);
                           if(x>0)
                               out.println(" updated successfully");
                           else
                               out.println(" not updated successfully");
                     }
                     else
                         if(b.equals("Delete"))
                         {
                              STATE_ID=request.getParameter("STATE_ID.text");
                               int x=st.executeUpdate("delete from STATE where STATE_ID="+STATE_ID);
                               if(x>0)
                                     out.println("deleted successfully");
                               else
                                     out.println(" deleted successfully");
                                   
                         
                         
                         
                         }
                       
           
             response.sendRedirect("STATE_des.jsp");
           
           
           }
           catch(SQLException ex)
           {
           
           }
          
      
      %>
    </body>
</html>
