
<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
   <head>
    <title>Resposive CV design </title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'poppins', sans-serif;
        }
        
        body {
            background: lightblue;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        
        .container {
            position: relative;
            width: 100%;
            max-width: 1000px;
            min-height: 1000px;
            margin: 50px;
            background-color: #fff;
            display: grid;
            grid-template-columns: 1fr 2fr;
            box-shadow: 0 35px 55px rgba(0, 0, 0, 0.1);
        }
        
        .container .left_side {
            position: relative;
            background: #003147;
            padding: 40px;
        }
        
        .container .right_side {
            position: relative;
            background: #fff;
            padding: 40px;
        }
        
        .profileText {
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-bottom: 20px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }
        
        .profileText .imgBox {
            position: relative;
            width: 200px;
            height: 200px;
            border-radius: 50%;
            overflow: hidden;
        }
        
        .profileText .imgBox img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        
        .profileText h2 {
            color: #fff;
            font-size: 1.5em;
            margin-top: 20px;
            text-transform: uppercase;
            text-align: center;
            font-weight: 600;
            line-height: 1.4em;
        }
        
        .profileText h2 span {
            font-size: 0.8em;
            font-weight: 300;
        }
        
        .contactInfo {
            padding-top: 40px;
        }
        
        .title {
            color: #fff;
            text-transform: uppercase;
            font-weight: 600;
            letter-spacing: 1px;
            margin-bottom: 20px;
        }
        
        .PersonalDetails ul {
            position: relative;
        }
        
        .PersonalDetails ul li {
            position: relative;
            list-style: none;
            margin: 10px 0;
            cursor: pointer;
        }
        
        .PersonalDetails ul li .icon {
            display: inline-block;
            width: 30px;
            font-size: 18px;
            color: #03a9f4;
        }
        
        .PersonalDetails ul li span {
            color: #fff;
            font-weight: 300;
        }
        
        .education li {
            margin-bottom: 15px;
        }
        
        .education {
            color: #03a9f4;
            font-weight: 500;
        }
        
        .education :nth-child(2) {
            color: #fff;
            font-weight: 500;
        }
        
/*        .education h4 {
            color: #fff;
            font-weight: 300;
        }*/
        
        .exp .percent {
            position: relative;
            width: 100%;
            height: 6px;
            background: #081921;
            display: block;
            margin-top: 5px;
        }
        
        .exp .percent div {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            background: #03a9f4;
        }
        
        .project_details {
            margin-bottom: 50px;
        }
        
        .project_details:last-child {
            margin-bottom: 0;
        }
        
        .title2 {
            color: #003147;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 10px;
        }
        
        p {
            color: #333;
        }
        
        .about .box {
            display: flex;
            flex-direction: row;
            margin: 20px 0;
        }
        
        .about .box .year_company {
            min-width: 150px;
        }
        
        .about .box .year_company h5 {
            text-transform: uppercase;
            color: #848c90;
            font-weight: 600;
        }
        
        .about .box .text h4 {
            text-transform: uppercase;
            color: #2a7da2;
            font-size: 16px;
        }
        
        .skills .box {
            position: relative;
            width: 100%;
            display: grid;
            grid-template-columns: 150px 1fr;
            justify-content: center;
            align-items: center;
        }
        
        .skills .box h4 {
            text-transform: uppercase;
            color: #848c99;
            font-weight: 500;
        }
        
        .skills .box .percent {
            position: relative;
            width: 100%;
            height: 10px;
            background: #f0f0f0;
        }
        
        .skills .box .percent div {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            background: #03a9f4;
        }
        
        .interest ul {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
        }
        
        .interest ul li {
            list-style: none;
            color: #333;
            font-weight: 500;
            margin: 10px 0;
        }
        
        .interest ul li .fa {
            color: white;
            font-size: 22px;
            width: 20px;
        }
        ul,li {
            color: white;
            font-size: 18px;
            width: 20px;
        }
        @media(max-width:1000px) {
            .container {
                margin: 10px;
                grid-template-columns: repeat(1, 1fr);
            }
            .interest ul {
                grid-template-columns: repeat(2, 1fr);
            }
        }
        
        @media(max-width:600px) {
            .about .box {
                flex-direction: column;
            }
            .about .box .year_company {
                margin-bottom: 5px;
            }
            .interest ul {
                grid-template-columns: repeat(1, 1fr);
            }
            .skills .box {
                grid-template-columns: repeat(1, 1fr);
            }
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
           <script>
    function toPDF () {
      html2pdf()
        // (C1) SET OPTIONS
        .set({
           margin: [0, 0, 0, 0],
          filename: "demo.pdf",
          image: { type: "jpeg", quality: 0.9 },
          enableLinks : true,
          jsPDF: { format: "A4", orientation: "portrait", compress: true
               },
         })
        // (C2) GET CONTENT FROM SECTION
        .from(document.getElementById("demo"))

        // (C3) SAVE TO FILE
        .save();
    }
    </script>

</head>

<body>
     <%!
            Connection con;
            Statement st;
            ResultSet rs;
          
          String CAND_FULLNM="", CAND_DOB="", CAND_GENDER="",
                COUNTRY_ID="",
                STATE_ID="",
                CITY_ID="",
                CAND_ADDR="",
                CAND_MOBILE="",
                CAND_PHNO="",
                CAND_EMAIL="",
                Password="",
                CAND_PHOTO="",
                SCHOOLBOARD="",
                SSCYEAR="",
                COLLEGEHSCBOARD="",
                HSCYEAR="",
                DEGREEUNIVERSITY="",
                DEGREE="",
                DEGREEPASSINGYEAR="",
                PGDEGREEUNIVERSITY="",
                PG="",
                PGPASSINGYEAR="",
                WORKINGEXP="",
                NOOFYEARSEXP="",
                COMPONYDETAILS="",
                WORKINGSUMMARY="",
                HOBBIES="",
                EXTRACIRCULAMACTIVITIES="",
                SKILLSKNOW="",
                SKILLSDETAILS="",
                SKILLAVGPERCENTAGE="";
        %>
        
        <%
            String candid="";
            if(session.getAttribute("id")!=null)
            {
               candid=session.getAttribute("id").toString();
            }
          try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
                st=con.createStatement();
                rs=st.executeQuery("select CAND_ID,CAND_FULLNM,CAND_DOB,CAND_GENDER,COUNTRY_NM,STATE_NM,"
                        + "CITY_NM,CAND_ADDR,CAND_MOBILE,CAND_PHNO,CAND_EMAIL,Password,CAND_PHOTO from CANDIDATE_MASTER,COUNTRY,STATE,CITY WHERE CANDIDATE_MASTER.COUNTRY_ID=COUNTRY.COUNTRY_ID AND CANDIDATE_MASTER.STATE_ID=STATE.STATE_ID AND CANDIDATE_MASTER.CITY_ID=CITY.CITY_ID AND CANDIDATE_MASTER.CAND_ID="+candid);
                
               while(rs.next())
                {
                   CAND_FULLNM=rs.getString(2);
                   CAND_DOB=rs.getString(3);
                    CAND_GENDER=rs.getString(4);
                COUNTRY_ID=rs.getString(5);
                STATE_ID=rs.getString(6);
                CITY_ID=rs.getString(7);
                CAND_ADDR=rs.getString(8);
                CAND_MOBILE=rs.getString(9);
                CAND_PHNO=rs.getString(10);
                CAND_EMAIL=rs.getString(11);
                Password=rs.getString(12);
                CAND_PHOTO="Upload/"+rs.getString(13);
                                  
                }
             rs.close();
             
                rs=st.executeQuery("select * from CANDIDATE_DETAILS where CAND_ID="+candid);
               while(rs.next())
                {
                    SCHOOLBOARD=rs.getString(3);
                   SSCYEAR=rs.getString(4);
                   COLLEGEHSCBOARD=rs.getString(5);
                   HSCYEAR=rs.getString(6);
                   DEGREEUNIVERSITY=rs.getString(7);
                   DEGREE=rs.getString(8);
                   DEGREEPASSINGYEAR=rs.getString(9);
                   PGDEGREEUNIVERSITY=rs.getString(10);
                   PG=rs.getString(11);
                   PGPASSINGYEAR=rs.getString(12);
                   WORKINGEXP=rs.getString(13);
                   NOOFYEARSEXP=rs.getString(14);
                   COMPONYDETAILS=rs.getString(15);
                   WORKINGSUMMARY=rs.getString(16);
                   HOBBIES=rs.getString(17);
                   EXTRACIRCULAMACTIVITIES=rs.getString(18);

                                  
                }
                rs.close();
             
                rs=st.executeQuery("select * from CANDIDATE_SKILLS  where CAND_ID="+candid);
               // out.print("select * from CANDIDATE_SKILLS  where CAND_ID="+candid);
               while(rs.next())
                {
                        SKILLSKNOW=rs.getString(3);
                        SKILLSDETAILS=rs.getString(4);
                        SKILLAVGPERCENTAGE=rs.getString(5);

                }
            
            }
            catch(SQLException e)
            {
                out.println("  "+e.getMessage() +e);
            }
        %>
    
<!--        <img src="Upload/AmitBagi.jpg" alt=""/>-->
<div id="demo">
<div class="container">
        <div class="left_side">
            <div class="profileText">
                <div class="imgBox">

                    <img src="<%=CAND_PHOTO%>" height="150px" width="150px" alt="" />
                    
                    
                </div>
                <h2><%=CAND_FULLNM%><br>  </h2>
            </div>
            <div class="PersonalDetails">
                <h3 style="text-align:center ;border:3px double navy;border-radius: 40px;width:300px;background-color: navy;color:white;" >Personal Details- </h3>
                <ul style="COLOR:WHITE">
                    <li style="COLOR:WHITE">
                        <H3 style="COLOR:WHITE;font-family: fantasy;">Name: </H3>
                        <H4 style="COLOR:WHITE"><%=CAND_FULLNM%></H4>
                    </li>
                    <li>
                         <H3 style="COLOR:WHITE;font-family: fantasy;">Country: </H3>
                        <H3 style="COLOR:WHITE"><%= COUNTRY_ID %></H3>
                    </li>
                     <li>
                         <H3 style="COLOR:WHITE;font-family: fantasy;">State: </H3>
                        <H3 style="COLOR:WHITE"><%= STATE_ID %></H3>
                    </li>
                     <li>
                         <H3 style="COLOR:WHITE;font-family: fantasy;">City: </H3>
                        <H3 style="COLOR:WHITE"><%=CITY_ID%></H3>
                    </li>
                     <li>
                         <H3 style="COLOR:WHITE;font-family: fantasy;">Address</H3>
                        <H4 style="COLOR:WHITE"><%= CAND_ADDR %></h4>
                    </li>
                    <li>
                         <H3 style="COLOR:WHITE;font-family: fantasy;">Date Of Birth: </H3>
                        <H4 style="COLOR:WHITE"><%= CAND_DOB %></h4>
                    </li>
                    <li>
                         <H3 style="COLOR:WHITE;font-family: fantasy;">Gender: </H3>
                        <H4 style="COLOR:WHITE"><%= CAND_GENDER %></h4>
                    </li>
                    
                     <li>
                         <H3 style="COLOR:WHITE;font-family: fantasy;">Mobile: </H3>
                        <H4 style="COLOR:WHITE"><%= CAND_MOBILE %></h4>
                    </li>
                     <li>
                         <H3 style="COLOR:WHITE;font-family: fantasy;">Phone: </H3>
                        <H4 style="COLOR:WHITE"><%= CAND_PHNO %></h4>
                    </li>
                     <li>
                         <H3 style="COLOR:WHITE;font-family: fantasy;">Email: </H3>
                        <H4 style="COLOR:WHITE"><%= CAND_EMAIL %></h4>
                    </li>
                     
                </ul>
                    
                    <h3 style="text-align:center ;border:3px double navy;border-radius: 40px;width:300px;background-color: navy;color:white;" >Skills Details</h3>
                    <br>
                    <table class='table' id="bio1" style="COLOR:WHITE;font-family: fantasy;">
                        <thead>
                            <tr>
                                <th>Skills Known</th>
                                <th>Skills Details</th>
                                <th>Skills Average</th>
                            </tr>
                        </thead>
                        <tbody>
                  <%   rs=st.executeQuery("select * from CANDIDATE_SKILLS   where CAND_ID="+candid);
               while(rs.next())
                {
                        SKILLSKNOW=rs.getString(3);
                        SKILLSDETAILS=rs.getString(4);
                        SKILLAVGPERCENTAGE=rs.getString(5);

               %>
                                                <tr>
                                <td><%=SKILLSKNOW%></td>
                                <td><%=SKILLSDETAILS%></td>
                                <td><input type="range" value=<%=SKILLAVGPERCENTAGE%> /></td>
                            </tr>
                            <%
                }
               %>
                        </tbody>
                    </table>

                        <input type="submit" class="btn btn-warning" value="Download PDF" onclick="toPDF()"/>
                        <input type="submit" onclick="window.print()" class="btn btn-warning" value="Print" />
            </div>


        </div>
        <div class="right_side" >
            <div class="project_details">
                <h1 style="text-align:center ;border:3px double navy;border-radius: 40px;width:300px;background-color: navy;color:white;">Working Details- </h1>
               
                <h2 class="title2" style="font-family: fantasy;">Working Experience: </h2>
                <h3 class="title2"><%=WORKINGEXP%></h3>
                <h2 class="title2" style="font-family: fantasy;">No of Years: </h2>
                <h3 class="title2"><%=NOOFYEARSEXP%></h3>
                <h2 class="title2" style="font-family: fantasy;">Compony Details:</h2>
                <h3 class="title2"><%=COMPONYDETAILS%></h3>
                <h2 class="title2" style="font-family: fantasy;">Working Summary: </h2>
                <h3 class="title2"><%=WORKINGSUMMARY%></h3>
                <h2 class="title2" style="font-family: fantasy;">Hobbies</h2>
                <h3 class="title2" ><%=HOBBIES%></h3>
                <h2 class="title2" style="font-family: fantasy;">Project Details: </h2>
                <h3 class="title2"><%=EXTRACIRCULAMACTIVITIES%></h3>

                
            </div>
            <div class="project_details">
                
                <h1 style="text-align:center ;border:3px double navy;border-radius: 40px;width:300px;background-color: navy;color:white;">Academic Details</h1>
                

                 <h2 class="title2" style="font-family: fantasy;">School Board- </h2>
                     <h3 class="title2"><%=SCHOOLBOARD%></h3>
                 
                     
                     <h2 class="title2" style="font-family: fantasy;">S.S.C. Year: </h2>
                     <h3 class="title2"><%=SSCYEAR%></h3>
                     <h2 class="title2" style="font-family: fantasy;">H.S.C. Board: </h2>
                     <h3 class="title2"><%= COLLEGEHSCBOARD %></h3>
                     <h2 class="title2" style="font-family: fantasy;">H.S.C. YEAR: </h2>
                     <h3 class="title2"><%= HSCYEAR %></h3>
                     <h2 class="title2" style="font-family: fantasy;">University: </h2>
                     <h3 class="title2"><%=DEGREEUNIVERSITY %></h3>
                     <h2 class="title2" style="font-family: fantasy;">Degree: </h2>
                     <h3 class="title2"><%= DEGREE %></h3>
                     <h2 class="title2" style="font-family: fantasy;">Passing Year: </h2>
                     <h3 class="title2"><%=DEGREEPASSINGYEAR%></h3>
                     <h2 class="title2" style="font-family: fantasy;">Post Graduation: </h2>
                     <h3 class="title2"><%=PG%></h3>
                     <h2 class="title2" style="font-family: fantasy;">Post Graduation Passing Year: </h2>
                     <h3 class="title2"><%=PGPASSINGYEAR%></h3>
            </div>

    </div>
    </div>
</div> 
             


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
</body>

</html>

