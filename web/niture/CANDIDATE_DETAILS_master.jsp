<%-- 
    Document   : CANDIDATE_DETAILS_master
    Created on : 17 Oct, 2022, 2:51:02 PM
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
           
           String  CAND_DET_ID ,CAND_ID,SCHOOLBOARD,SSCYEAR,COLLEGEHSCBOARD,HSCYEAR,DEGREEUNIVERSITY,
                 DEGREE,DEGREEPASSINGYEAR,PGDEGREEUNIVERSITY ,PG,PGPASSINGYEAR,WORKINGEXP,NOOFYEARSEXP,
                 COMPONYDETAILS ,WORKINGSUMMARY ,HOBBIES ,EXTRACIRCULAMACTIVITIES,b;
            b =request.getParameter("b");
           try
           {
                 Class.forName("com.mysql.jdbc.Driver");
                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
                 st=cn.createStatement();
                 
                 
                 if(b.equals("Insert"))
                 {
                    
                        CAND_DET_ID=request.getParameter("CAND_DET_ID.text");
                        CAND_ID=request.getParameter("d1");
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

                     int x= st.executeUpdate("insert into CANDIDATE_DETAILS values("+CAND_DET_ID+",'"+CAND_ID+"','"+SCHOOLBOARD+"','"+SSCYEAR+"','"+COLLEGEHSCBOARD+"',"
                             + "'"+HSCYEAR+"','"+DEGREEUNIVERSITY+"','"+DEGREE+"','"+DEGREEPASSINGYEAR+"','"+PGDEGREEUNIVERSITY+"',"
                             + "'"+PG+"','"+PGPASSINGYEAR+"','"+WORKINGEXP+"','"+NOOFYEARSEXP+"','"+COMPONYDETAILS+"','"+WORKINGSUMMARY+"','"+HOBBIES+"','"+EXTRACIRCULAMACTIVITIES+"')");
                     if(x>0)
                         out.println("Insert  successfully...");
                     else
                         out.println("not insert successfuly");
                 
                 
                 }
                 
             response.sendRedirect("CANDIDATE_DETAILS_des.jsp");
           
           
           }
           catch(SQLException ex)
           {
           
           }
          
      
      %>
    </body>
</html>
