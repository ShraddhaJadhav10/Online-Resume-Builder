<%-- 
    Document   : AddSkills_code
    Created on : Nov 15, 2022, 4:45:52 PM
    Author     : SHRADDHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
           Connection cn;
           Statement st;
           ResultSet rs;
           %>
           <%
               try
           {
                 Class.forName("com.mysql.jdbc.Driver");
                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
                 st=cn.createStatement();
                 
           }
                catch(SQLException ex)
           {
           out.print(ex);
           }
               
               %>
           <%
           String SKILL_ID="",SKILLSKNOW="",SKILLDETALIS="",SKILL_AVG_PERCENTAGE="";
           
           String CAND_ID=session.getAttribute("id").toString();  
           //request.getParameter("CAND_ID.text");
           
                     
                     SKILL_ID=request.getParameter("SKILL_ID.text");
                     SKILLSKNOW=request.getParameter("SKILLSKNOW.text");
                    SKILLDETALIS=request.getParameter("SKILLSDETAILS.text");
                     SKILL_AVG_PERCENTAGE=request.getParameter("SKILL_AVG_PERCENTAGE.text");
                        

                     int x= st.executeUpdate("insert into CANDIDATE_SKILLS values("+SKILL_ID+",'"+CAND_ID+"','"+SKILLSKNOW+"','"+SKILLDETALIS+"','"+SKILL_AVG_PERCENTAGE+"')");
                        out.print("insert into CANDIDATE_SKILLS values("+SKILL_ID+",'"+CAND_ID+"','"+SKILLSKNOW+"','"+SKILLDETALIS+"','"+SKILL_AVG_PERCENTAGE+"')");
                     if(x>0)
                         out.println("Records Updated successfully...");
                     else
                         out.println("Records not updated");
                     session.setAttribute("id", CAND_ID);
                      //response.sendRedirect("SelectTemplate.jsp");
           
           
           
          
          
      
      %>
      
      <%!
       public int GetNewCandID()
        {
            int maxid=0;
            try
            {
                st=cn.createStatement();
                rs=st.executeQuery("select max(CAND_ID)from CANDIDATE_MASTER");
                if(rs.next())
                {
                    maxid=rs.getInt(1);
                }
            }
            catch(Exception e)
            {
            
            }
            return (maxid+1);
        } 
     
      
         public int GetNewSkillID()
        {
            int maxid=0;
            try
            {
                st=cn.createStatement();
                rs=st.executeQuery("select max(SKILL_ID)from CANDIDATE_SKILLS");
                if(rs.next())
                {
                    maxid=rs.getInt(1);
                }
            }
            catch(Exception e)
            {
            
            }
            return (maxid+1);
        }
      %>
    </body>
</html>
