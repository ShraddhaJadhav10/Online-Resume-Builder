<%-- 
    Document   : CANDIDATE_SKILLS_master
    Created on : 17 Oct, 2022, 2:50:31 PM
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
           
           String  SKILL_ID,CAND_ID,SKILLSKNOW,SKILLSDETAILS,SKILLAVGPERCENTAGE,b;
            b =request.getParameter("b");
           try
           {
                 Class.forName("com.mysql.jdbc.Driver");
                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
                 st=cn.createStatement();
                 
                 
                 if(b.equals("Insert"))
                 {
                    
                    SKILL_ID=request.getParameter("SKILL_ID.text");
                    CAND_ID=request.getParameter("d1");
                    SKILLSKNOW=request.getParameter("SKILLSKNOW.text");
                    SKILLSDETAILS=request.getParameter("SKILLSDETAILS.text");
                    SKILLAVGPERCENTAGE=request.getParameter("SKILLAVGPERCENTAGE.text");

                     int x= st.executeUpdate("insert into CANDIDATE_SKILLS values("+SKILL_ID+",'"+CAND_ID+"','"+SKILLSKNOW+"','"+SKILLSDETAILS+"','"+SKILLAVGPERCENTAGE+"')");
                     if(x>0)
                         out.println("Insert  successfully...");
                     else
                         out.println("not insert successfuly");
                 
                 
                 }
                 
             response.sendRedirect("CANDIDATE_SKILLS_des.jsp");
           
           
           }
           catch(SQLException ex)
           {
           
           }
          
      
      %>
    </body>
</html>
