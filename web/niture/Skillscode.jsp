<%-- 
    Document   : Mainformcode
    Created on : Oct 22, 2022, 10:15:05 AM
    Author     : Soft-Tech1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
           String  SKILLSKNOW,SKILLSDETAILS,SKILLAVGPERCENTAGE;
            
           String CAND_ID;//=GetNewCandID();    //request.getParameter("CAND_ID.text");
           int SKILL_ID=GetNewSkillID();
           String btn=request.getParameter("b");
           
                     
           if(btn.equals("Login")==false)
           {
                   //SKILL_ID=request.getParameter("SKILL_ID.text");
                    CAND_ID=(String)session.getAttribute("id").toString();
                    SKILLSKNOW=request.getParameter("SKILLSKNOW.text");
                    SKILLSDETAILS=request.getParameter("SKILLSDETAILS.text");
                    SKILLAVGPERCENTAGE=request.getParameter("SKILLAVGPERCENTAGE.text");

                     int x= st.executeUpdate("insert into CANDIDATE_SKILLS values("+SKILL_ID+",'"+CAND_ID+"','"+SKILLSKNOW+"','"+SKILLSDETAILS+"','"+SKILLAVGPERCENTAGE+"')");
                     if(x>0)
                         out.println("Insert  successfully...");
                     else
                         out.println("not insert successfuly");  
                      response.sendRedirect("Skills.jsp");
                     
           }
           else
           {
                            response.sendRedirect("Login.jsp");

           }
            
           
           
           
          
          
      
      %>
      
      
      <%!
      
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
