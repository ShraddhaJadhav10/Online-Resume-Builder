<%-- 
    Document   : CANDIDATE_MASTER_master
    Created on : 17 Oct, 2022, 2:51:23 PM
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
           
           String  CAND_ID,CAND_FULLNM,CAND_DOB,CAND_GENDER,COUNTRY_ID,STATE_ID,CITY_ID,CAND_ADDR,CAND_MOBILE,CAND_PHNO,CAND_EMAIL,CAND_PHOTO,b,CAND_Password;
            b =request.getParameter("b");
           try
           {
                 Class.forName("com.mysql.jdbc.Driver");
                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
                 st=cn.createStatement();
                 
                 
                 if(b.equals("Insert"))
                 {
                     CAND_ID=request.getParameter("CAND_ID.text");
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
                 
                 
                 }
                 
//            response.sendRedirect("CANDIDATE_MASTER_des.jsp");
           
           
           }
           catch(SQLException ex)
           {
           
           }
          
      
      %>
    </body>
</html>
