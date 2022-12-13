<%-- 
    Document   : resume_list
    Created on : Sep 22, 2022, 3:56:15 PM
    Author     : SHRADDHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resume List Report</title>
    </head>
    <body>
        <%
            Connection con;
            Statement st;
            ResultSet rs;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume_builder","root","");
                st=con.createStatement();
                rs=st.executeQuery("select * from demo_resume");
                out.println("<table border='2px'><tr><th>Name</th><th>Address</th><th>Date Of Birth</th><th>Gender</th><th>Nationality</th><th>Contact</th><th>Email</th><th>Details1</th><th>Details2</th><th>Company Name</th><th>Designation</th><th>Work Experience</th><th>Project1</th><th>Project2</th><th>Language</th><th>Hobbies</th><th>Achievements</th><th>Others</th><th>Declation</th></tr>");
                while(rs.next())
                {
                    
                    out.println("<tr>");
                    out.println("<td>"+rs.getString(1)+"</td>");
                    out.println("<td>"+rs.getString(2)+"</td>");
                    out.println("<td>"+rs.getString(3)+"</td>");
                    out.println("<td>"+rs.getString(4)+"</td>");
                    out.println("<td>"+rs.getString(5)+"</td>");
                    out.println("<td>"+rs.getString(6)+"</td>");
                    out.println("<td>"+rs.getString(7)+"</td>");
                    out.println("<td>"+rs.getString(8)+"</td>");
                    out.println("<td>"+rs.getString(9)+"</td>");
                    out.println("<td>"+rs.getString(10)+"</td>");
                    out.println("<td>"+rs.getString(11)+"</td>");
                    out.println("<td>"+rs.getString(12)+"</td>");
                    out.println("<td>"+rs.getString(13)+"</td>");
                    out.println("<td>"+rs.getString(14)+"</td>");
                    out.println("<td>"+rs.getString(15)+"</td>");
                    out.println("<td>"+rs.getString(16)+"</td>");
                    out.println("<td>"+rs.getString(17)+"</td>");
                    out.println("<td>"+rs.getString(18)+"</td>");
                    out.println("<td>"+rs.getString(19)+"</td>"); 
                    
                    out.println("</tr>");
                }
                out.println("</table>");
            }
            catch(SQLException e)
            {
                out.println(e);
            }
        %>
    </body>
</html>
