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
            String  SCHOOLBOARD,SSCYEAR,COLLEGEHSCBOARD,HSCYEAR,DEGREEUNIVERSITY,
                 DEGREE,DEGREEPASSINGYEAR,PGDEGREEUNIVERSITY ,PG,PGPASSINGYEAR,WORKINGEXP,NOOFYEARSEXP,
                 COMPONYDETAILS ,WORKINGSUMMARY ,HOBBIES ,EXTRACIRCULAMACTIVITIES;
           String  CAND_FULLNM,CAND_DOB,CAND_GENDER,COUNTRY_ID,STATE_ID,CITY_ID,CAND_ADDR,CAND_MOBILE,CAND_PHNO,CAND_EMAIL,CAND_Password,CAND_PHOTO,b;
           int CAND_ID=GetNewCandID();    //request.getParameter("CAND_ID.text");
           int SKILL_ID=GetNewSkillID();
            int CAND_DET_ID=GetNewDetID();
                     
                     CAND_FULLNM=request.getParameter("CAND_FULLNM.text");
                     CAND_DOB=request.getParameter("CAND_DOB.text");
                    CAND_GENDER=request.getParameter("CAND_GENDER.text");
                        COUNTRY_ID=request.getParameter("d1");
                        STATE_ID=request.getParameter("d2");
                        CITY_ID=request.getParameter("d3");
                        CAND_ADDR=request.getParameter("CAND_ADDR.text");
                        CAND_MOBILE=request.getParameter("CAND_MOBILE.text");
                        CAND_PHNO=request.getParameter("CAND_PHNO.text");
                        CAND_EMAIL=request.getParameter("CAND_EMAIL.text");
                        CAND_Password=request.getParameter("password.text");
                        CAND_PHOTO=request.getParameter("CAND_PHOTO.text");

                     int x= st.executeUpdate("insert into CANDIDATE_MASTER values("+CAND_ID+",'"+CAND_FULLNM+"','"+CAND_DOB+"','"+CAND_GENDER+"',"
                             + "'"+COUNTRY_ID+"','"+STATE_ID+"','"+CITY_ID+"','"+CAND_ADDR +"','"+CAND_MOBILE +"','"+CAND_PHNO+"','"+CAND_EMAIL+"','"+CAND_Password+"','"+CAND_PHOTO+"')");
                     if(x>0)
                         out.println("Insert  successfully...");
                     else
                         out.println("not insert successfuly");
                 
                 
               //academic details insert
                     
                     
                     
                     
               
                     //   CAND_DET_ID=request.getParameter("CAND_DET_ID.text");
                     //   CAND_ID=request.getParameter("d1");
                        SCHOOLBOARD=request.getParameter("SCHOOLBOARD.text");
                        SSCYEAR=request.getParameter("SSCYEAR.text");
                        COLLEGEHSCBOARD=request.getParameter("COLLEGEHSCBOARD.text");
                        HSCYEAR=request.getParameter("HSCYEAR.text");
                        DEGREEUNIVERSITY=request.getParameter("DEGREEUNIVERSITY.text");
                        DEGREE=request.getParameter("DEGREE.text");
                        DEGREEPASSINGYEAR=request.getParameter("DEGREEPASSINGYEAR.text");
                        PGDEGREEUNIVERSITY=request.getParameter("PGDEGREEUNIVERSITY.text");
                        PG=request.getParameter("PG.text");
                        PGPASSINGYEAR=request.getParameter("PGPASSINGYEAR.text");
                        WORKINGEXP=request.getParameter("WORKINGEXP.text");
                        NOOFYEARSEXP=request.getParameter("NOOFYEARSEXP.text");
                        COMPONYDETAILS=request.getParameter("COMPONYDETAILS.text");
                        WORKINGSUMMARY=request.getParameter("WORKINGSUMMARY.text");
                        HOBBIES=request.getParameter("HOBBIES.text");
                        EXTRACIRCULAMACTIVITIES=request.getParameter("EXTRACIRCULAMACTIVITIES.text");

                      x= st.executeUpdate("insert into CANDIDATE_DETAILS values("+CAND_DET_ID+","+CAND_ID+",'"+SCHOOLBOARD+"','"+SSCYEAR+"','"+COLLEGEHSCBOARD+"','"
                            +HSCYEAR+"','"+DEGREEUNIVERSITY+"','"+DEGREE+"','"+DEGREEPASSINGYEAR+"','"+PGDEGREEUNIVERSITY+"','"
                             +PG+"','"+PGPASSINGYEAR+"','"+WORKINGEXP+"','"+NOOFYEARSEXP+"','"+COMPONYDETAILS+"','"+WORKINGSUMMARY+"','"+HOBBIES+"','"+EXTRACIRCULAMACTIVITIES+"')");
                     if(x>0)
                         out.println("Insert  successfully...");
                     else
                         out.println("not insert successfuly");      
                     
                     //Skills insert
                     
                     
                     
                   //SKILL_ID=request.getParameter("SKILL_ID.text");
                    //CAND_ID=request.getParameter("d1");
//                    SKILLSKNOW=request.getParameter("SKILLSKNOW.text");
//                    SKILLSDETAILS=request.getParameter("SKILLSDETAILS.text");
//                    SKILLAVGPERCENTAGE=request.getParameter("SKILLAVGPERCENTAGE.text");
//
//                     x= st.executeUpdate("insert into CANDIDATE_SKILLS values("+SKILL_ID+",'"+CAND_ID+"','"+SKILLSKNOW+"','"+SKILLSDETAILS+"','"+SKILLAVGPERCENTAGE+"')");
//                     if(x>0)
//                         out.println("Insert  successfully...");
//                     else
//                         out.println("not insert successfuly");  
//                     
                     
                 session.setAttribute("id", CAND_ID);
             response.sendRedirect("Skills.jsp");
           
           
           
          
          
      
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
      public int GetNewDetID()
        {
            int maxid=0;
            try
            {
                
                rs=st.executeQuery("select max(CAND_DET_ID)from CANDIDATE_DETAILS");
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
