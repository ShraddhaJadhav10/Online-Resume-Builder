<%-- 
    Document   : student_insert
    Created on : Aug 22, 2022, 11:20:14 AM
    Author     : SHRADDHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resume details</title>
        
        
        
    </head>
    
    <body>
        <%
            Connection con;
            Statement st;
            ResultSet rs;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume_builder","root","");
                st=con.createStatement();
                
                String fullname,addr,dob,gender,nationality,contact,email,details1,details2,company_name,designation,work_exp,project1,project2,language,hobbies,achievements,others,declaration;
                fullname=request.getParameter("txt_fname");
                addr=request.getParameter("txt_addr");
                dob=request.getParameter("txt_dob");
                gender=request.getParameter("gender");
                nationality=request.getParameter("txt_nationality");
                contact=request.getParameter("txt_contact");
                email=request.getParameter("txt_email");
                details1=request.getParameter("txt_details1");
                details2=request.getParameter("txt_details2");
                company_name=request.getParameter("txt_companyname");
                designation=request.getParameter("txt_designation");
                work_exp=request.getParameter("txt_workexp");
                project1=request.getParameter("txt_p1");
                project2=request.getParameter("txt_p2");
                language=request.getParameter("txt_lang");
                hobbies=request.getParameter("txt_hobbies");
                achievements=request.getParameter("txt_achievement");
                others=request.getParameter("txt_others");
                declaration=request.getParameter("txt_declaration");
                int x=st.executeUpdate("insert into demo_resume values('"+fullname+ "','" +addr+ "','" +dob+ "','" +gender+ "','" +nationality+ "','" +contact+ "','" +email+ "','" +details1+ "','" +details2+ "','" +company_name+ "','" +designation+ "','" +work_exp+ "','" +project1+ "','" +project2+ "','" +language+ "','" +hobbies+ "','" +achievements+ "','" +others+ "','" +declaration+ "')");
                out.println("insert into demo_resume values('"+fullname+ "','" +addr+ "','" +dob+ "','" +gender+ "','" +nationality+ "','" +contact+ "','" +email+ "','" +details1+ "','" +details2+ "','" +company_name+ "','" +designation+ "','" +work_exp+ "','" +project1+ "','" +project2+ "','" +language+ "','" +hobbies+ "','" +achievements+ "','" +others+ "','" +declaration+ "')");
                if(x>0)
                    out.println("Record inserted successfully");
                else
                    out.println("Record not inserted...");
            
            }
            catch(SQLException ex)
            {
                out.println(ex);
            }
            %>
    </body>
</html>
