<%-- 
    Document   : SkillUpdateCode
    Created on : Nov 15, 2022, 3:48:00 PM
    Author     : SHRADDHA
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
           
           String SKILL_ID,SKILLSKNOW,SKILLSDETAILS,SKILL_AVG_PERCENTAGE,b;
            b =request.getParameter("b");
            String CAND_ID=session.getAttribute("id").toString();
            out.print(b);
                    
           try
           {
                 Class.forName("com.mysql.jdbc.Driver");
                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
                 st=cn.createStatement();
                 
                 
                 if(b.equals("Update"))
                 {
                      out.print("in Update");
                     SKILL_ID=request.getParameter("SKILL_ID.text");
//                     CAND_ID=request.getParameter("CAND_ID.text");
                     SKILLSKNOW=request.getParameter("SKILLSKNOW.text");
                     SKILLSDETAILS=request.getParameter("SKILLSDETAILS.text");
                     SKILL_AVG_PERCENTAGE=request.getParameter("SKILL_AVG_PERCENTAGE.text");
                     
                     
                       
                          int x= st.executeUpdate("update candidate_skills set CAND_ID="+CAND_ID+",SKILLSKNOW='"+SKILLSKNOW+ "',SKILLSDETAILS='" +SKILLSDETAILS+ "',SKILL_AVG_PERCENTAGE='"+SKILL_AVG_PERCENTAGE+ "' where SKILL_ID="+SKILL_ID);
                          out.print("update candidate_skills set CAND_ID="+CAND_ID+",SKILLSKNOW='"+SKILLSKNOW+ "',SKILLSDETAILS='" +SKILLSDETAILS+ "',SKILL_AVG_PERCENTAGE='"+SKILL_AVG_PERCENTAGE+ " where SKILL_ID="+SKILL_ID);
                          if(x>0)
                               out.println(" updated successfully");
                           else
                               out.println(" not updated successfully");
                     }
                     else
                         if(b.equals("Delete"))
                         {
                              SKILL_ID=request.getParameter("SKILL_ID.text");
                               int x=st.executeUpdate("delete from candidate_skills where SKILL_ID="+SKILL_ID);
                               out.print("delete from candidate_skills where SKILL_ID="+SKILL_ID);
                               if(x>0)
                                     out.println("deleted successfully");
                               else
                                     out.println(" deleted not successfully");
                                   
                         
                         
                         
                         }
                       
          // session.setAttribute("id", CAND_ID);
             response.sendRedirect("skillupdate_des.jsp");
           
           
           }
           catch(SQLException ex)
           {
           out.print(ex);
           }
          
      
      %>
    </body>
</html>
