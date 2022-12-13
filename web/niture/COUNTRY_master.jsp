<%-- 
    Document   : COUNTRY_master
    Created on : 17 Oct, 2022, 2:52:17 PM
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
           
           String COUNTRY_ID,COUNTRY_NM,b;
            b =request.getParameter("b");
           try
           {
                 Class.forName("com.mysql.jdbc.Driver");
                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
                 st=cn.createStatement();
                 
                 
                 if(b.equals("Insert"))
                 {
                     COUNTRY_ID=request.getParameter("COUNTRY_ID.text");
                     COUNTRY_NM=request.getParameter("COUNTRY_NM.text");
                     
                     
                     int x= st.executeUpdate("insert into COUNTRY values("+COUNTRY_ID+",'"+COUNTRY_NM+"')");
                     if(x>0)
                         out.println("Insert record successfully...");
                     else
                         out.println("not insert record successfuly");
                 
                 
                 }
                 else
                     if(b.equals("Update"))
                     {
                          COUNTRY_ID=request.getParameter("COUNTRY_ID.text");
                            COUNTRY_NM=request.getParameter("COUNTRY_NM.text");
                     
                       
                          int x= st.executeUpdate("update COUNTRY set COUNTRY_NM='"+COUNTRY_NM+"' where COUNTRY_ID="+COUNTRY_ID);
                           if(x>0)
                               out.println("record updated successfully");
                           else
                               out.println(" not record updated successfully");
                     }
                     else
                         if(b.equals("Delete"))
                         {
                              COUNTRY_ID=request.getParameter("COUNTRY_ID.text");
                            
                               int x=st.executeUpdate("delete from COUNTRY where COUNTRY_ID="+COUNTRY_ID);
                               if(x>0)
                                     out.println("record deleted successfully");
                               else
                                     out.println("record deleted successfully");
                                   
                         
                         
                         
                         }
                       
           response.sendRedirect("COUNTRY_des.jsp");
           
           
           
           }
           catch(SQLException ex)
           {
           
           }
           
      
      
      
      
      
      
      
      
      %>
    </body>
</html>
