<%-- 
    Document   : sample3
    Created on : Nov 9, 2022, 11:39:59 AM
    Author     : SHRADDHA
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- FONTS -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway:100' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
    <title>Document</title>
    
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


<style>
    * {
  box-sizing: border-box;
  transition: 0.35s ease;
}
.rela-block {
  display: block;
  position: relative;
  margin: auto;
  top: ;
  left: ;
  right: ;
  bottom: ;
}
.rela-inline {
  display: inline-block;
  position: relative;
  margin: auto;
  top: ;
  left: ;
  right: ;
  bottom: ;
}
.floated {
  display: inline-block;
  position: relative;
  margin: false;
  top: ;
  left: ;
  right: ;
  bottom: ;
  float: left;
}
.abs-center {
  display: false;
  position: absolute;
  margin: false;
  top: 50%;
  left: 50%;
  right: false;
  bottom: false;
  transform: translate(-50%, -50%);
  text-align: center;
  width: 88%;
}
body {
  font-family: 'Open Sans';
  font-size: 18px;
  letter-spacing: 0px;
  font-weight: 400;
  line-height: 28px;
  background: url("http://kingofwallpapers.com/leaves/leaves-016.jpg") right no-repeat;
  background-size: cover;
}
body:before {
  content: "";
  display: false;
  position: fixed;
  margin: 0;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(255,255,255,0.92);
}
.caps {
  text-transform: uppercase;
}
.justified {
  text-align: justify;
}
p.light {
  color: #777;
}
h2 {
  font-family: 'Open Sans';
  font-size: 30px;
  letter-spacing: 5px;
  font-weight: 600;
  line-height: 40px;
  color: #000;
}
h3 {
  font-family: 'Open Sans';
  font-size: 21px;
  letter-spacing: 1px;
  font-weight: 600;
  line-height: 28px;
  color: #000;
}
.page {
  width: 90%;
  max-width: 1200px;
  margin: 80px auto;
  background-color: #fff;
  box-shadow: 6px 10px 28px 0px rgba(0,0,0,0.4);
}
.top-bar {
  height: 220px;
  background-color: #848484;
  color: #fff;
}
.name {
  display: false;
  position: absolute;
  margin: false;
  top: false;
  left: calc(350px + 5%);
  right: 0;
  bottom: 0;
  height: 120px;
  text-align: center;
  font-family: 'Raleway';
  font-size: 58px;
  letter-spacing: 8px;
  font-weight: 100;
  line-height: 60px;
}
.name div {
  width: 94%;
}
.side-bar {
  display: false;
  position: absolute;
  margin: false;
  top: 60px;
  left: 5%;
  right: false;
  bottom: 0;
  width: 350px;
  background-color: #f7e0c1;
  padding: 320px 30px 50px;
}
.mugshot {
  display: false;
  position: absolute;
  margin: false;
  top: 50px;
  left: 70px;
  right: false;
  bottom: false;
  height: 210px;
  width: 210px;
}
.mugshot .logo {
  margin: -23px;
}
.logo {
  display: false;
  position: absolute;
  margin: false;
  top: 0;
  left: 0;
  right: false;
  bottom: false;
  z-index: 100;
  margin: 0;
  color: #000;
  height: 250px;
  width: 250px;
}
.logo .logo-svg {
  height: 100%;
  width: 100%;
  stroke: #000;
  cursor: pointer;
}
.logo .logo-text {
  display: false;
  position: absolute;
  margin: false;
  top: 58%;
  left: ;
  right: 16%;
  bottom: ;
  cursor: pointer;
  font-family: "Montserrat";
  font-size: 55px;
  letter-spacing: 0px;
  font-weight: 400;
  line-height: 58.333333333333336px;
}
.social {
  padding-left: 60px;
  margin-bottom: 20px;
  cursor: pointer;
}
.social:before {
  content: "";
  display: false;
  position: absolute;
  margin: false;
  top: -4px;
  left: 10px;
  right: false;
  bottom: false;
  height: 35px;
  width: 35px;
  background-size: cover !important;
}
.social.twitter:before {
  background: url("https://cdn3.iconfinder.com/data/icons/social-media-2026/60/Socialmedia_icons_Twitter-07-128.png") center no-repeat;
}
.social.pinterest:before {
  background: url("https://cdn3.iconfinder.com/data/icons/social-media-2026/60/Socialmedia_icons_Pinterest-23-128.png") center no-repeat;
}
.social.linked-in:before {
  background: url("https://cdn3.iconfinder.com/data/icons/social-media-2026/60/Socialmedia_icons_LinkedIn-128.png") center no-repeat;
}
.side-header {
  font-family: 'Open Sans';
  font-size: 18px;
  letter-spacing: 4px;
  font-weight: 600;
  line-height: 28px;
  margin: 60px auto 10px;
  padding-bottom: 5px;
  border-bottom: 1px solid #888;
}
.list-thing {
  padding-left: 25px;
  margin-bottom: 10px;
}
.content-container {
  margin-right: 0;
  width: calc(95% - 350px);
  padding: 25px 40px 50px;
}
.content-container > * {
  margin: 0 auto 25px;
}
.content-container > h3 {
  margin: 0 auto 5px;
}
.content-container > p.long-margin {
  margin: 0 auto 50px;
}
.title {
  width: 80%;
  text-align: center;
}
.separator {
  width: 240px;
  height: 2px;
  background-color: #999;
}
.greyed {
  background-color: #ddd;
  width: 100%;
  max-width: 580px;
  text-align: center;
  font-family: 'Open Sans';
  font-size: 18px;
  letter-spacing: 6px;
  font-weight: 600;
  line-height: 28px;
}
@media screen and (max-width: 1150px) {
  .name {
    color: #fff;
    font-family: 'Raleway';
    font-size: 38px;
    letter-spacing: 6px;
    font-weight: 100;
    line-height: 48px;
  }
}


</style>
<body>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
           
<!--Connection code-->
<%!
            Connection con;
            Statement st;
            ResultSet rs;

            String CAND_FULLNM = "", CAND_DOB = "", CAND_GENDER = "",
                    COUNTRY_ID = "",
                    STATE_ID = "",
                    CITY_ID = "",
                    CAND_ADDR = "",
                    CAND_MOBILE = "",
                    CAND_PHNO = "",
                    CAND_EMAIL = "",
                    Password="",
                    CAND_PHOTO = "",
                    SCHOOLBOARD = "",
                    SSCYEAR = "",
                    COLLEGEHSCBOARD = "",
                    HSCYEAR = "",
                    DEGREEUNIVERSITY = "",
                    DEGREE = "",
                    DEGREEPASSINGYEAR = "",
                    PGDEGREEUNIVERSITY = "",
                    PG = "",
                    PGPASSINGYEAR = "",
                    WORKINGEXP = "",
                    NOOFYEARSEXP = "",
                    COMPONYDETAILS = "",
                    WORKINGSUMMARY = "",
                    HOBBIES = "",
                    EXTRACIRCULAMACTIVITIES = "",
                    SKILLSKNOW = "",
                    SKILLSDETAILS = "",
                    SKILLAVGPERCENTAGE = "";
        %>

        <%
            String candid = "16";
            if (session.getAttribute("id") != null) {
                candid = session.getAttribute("id").toString();
            }
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resume", "root", "");
                st = con.createStatement();
                rs = st.executeQuery("select CAND_ID,CAND_FULLNM,CAND_DOB,CAND_GENDER,COUNTRY_NM,STATE_NM,"
                        + "CITY_NM,CAND_ADDR,CAND_MOBILE,CAND_PHNO,CAND_EMAIL,Password,CAND_PHOTO from CANDIDATE_MASTER,COUNTRY,STATE,CITY WHERE CANDIDATE_MASTER.COUNTRY_ID=COUNTRY.COUNTRY_ID AND CANDIDATE_MASTER.STATE_ID=STATE.STATE_ID AND CANDIDATE_MASTER.CITY_ID=CITY.CITY_ID AND CANDIDATE_MASTER.CAND_ID=" + candid);

                while (rs.next()) {
                    CAND_FULLNM = rs.getString(2);
                    CAND_DOB = rs.getString(3);
                    CAND_GENDER = rs.getString(4);
                    COUNTRY_ID = rs.getString(5);
                    STATE_ID = rs.getString(6);
                    CITY_ID = rs.getString(7);
                    CAND_ADDR = rs.getString(8);
                    CAND_MOBILE = rs.getString(9);
                    CAND_PHNO = rs.getString(10);
                    CAND_EMAIL = rs.getString(11);
                    Password=rs.getString(12);
                    CAND_PHOTO = "Upload/" + rs.getString(13);

                }
                rs.close();

                rs = st.executeQuery("select * from CANDIDATE_DETAILS where CAND_ID=" + candid);
                while (rs.next()) {
                    SCHOOLBOARD = rs.getString(3);
                    SSCYEAR = rs.getString(4);
                    COLLEGEHSCBOARD = rs.getString(5);
                    HSCYEAR = rs.getString(6);
                    DEGREEUNIVERSITY = rs.getString(7);
                    DEGREE = rs.getString(8);
                    DEGREEPASSINGYEAR = rs.getString(9);
                    PGDEGREEUNIVERSITY = rs.getString(10);
                    PG = rs.getString(11);
                    PGPASSINGYEAR = rs.getString(12);
                    WORKINGEXP = rs.getString(13);
                    NOOFYEARSEXP = rs.getString(14);
                    COMPONYDETAILS = rs.getString(15);
                    WORKINGSUMMARY = rs.getString(16);
                    HOBBIES = rs.getString(17);
                    EXTRACIRCULAMACTIVITIES = rs.getString(18);

                }
                rs.close();

                rs = st.executeQuery("select * from CANDIDATE_SKILLS  where CAND_ID=" + candid);
                // out.print("select * from CANDIDATE_SKILLS  where CAND_ID="+candid);
                while (rs.next()) {
                    SKILLSKNOW = rs.getString(3);
                    SKILLSDETAILS = rs.getString(4);
                    SKILLAVGPERCENTAGE = rs.getString(5);

                }

            } catch (SQLException e) {
                out.println("  " + e.getMessage() + e);
            }
        %>
<!-- PAGE STUFF -->
<div id="demo">
<div class="rela-block page">

    <div class="rela-block top-bar">
        <div class="caps name">
           <div class="col-lg-8 col-md-7 text-center text-md-start">
                <h2 class="h1 mt-2" data-aos="fade-left" data-aos-delay="0"><%= CAND_FULLNM%></h2></div>
        </div>
    </div>
    <div class="side-bar">
        <div class="mugshot">
             <div class="col-lg-4 col-md-5">
                                <div class="avatar hover-effect bg-white shadow-sm p-1">
                                    <img src="<%=CAND_PHOTO%>" width="200" height="200" /> </div>
                                   
                                    
                            </div>
<!--            <div class="logo">
                <svg viewbox="0 0 80 80" class="rela-block logo-svg">
                    <path d="M 10 10 L 52 10 L 72 30 L 72 70 L 30 70 L 10 50 Z" stroke-width="2.5" fill="none" />
                </svg>
               
            </div>-->
        </div>
          <div class="rela-block caps greyed">About Me</div>            
         <!--<h2 class="h3 mb-3" style="color :darkslategray;">About Me</h2>-->
             <div class="row mt-2">
                                    <div class="col-sm-4">
                                        <div class="pb-1"><b>Date of birth</b></div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="pb-1 text-secondary"><%= CAND_DOB%></div>
                                    </div>
                                     <div class="col-sm-4">
                                        <div class="pb-1"><b>Country</b></div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="pb-1 text-secondary"><%=COUNTRY_ID%></div>
                                    </div>
                                     <div class="col-sm-4">
                                        <div class="pb-1"><b>State</b></div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="pb-1 text-secondary"><%=STATE_ID%></div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="pb-1"><b>City</b></div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="pb-1 text-secondary"><%=CITY_ID%></div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="pb-1"><b>Email</b></div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="pb-1 text-secondary"><%= CAND_EMAIL%></div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="pb-1"><b>Phone</b></div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="pb-1 text-secondary"><%= CAND_PHNO%></div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="pb-1"><b>Address</b></div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="pb-1 text-secondary"><%= CAND_ADDR%></div>
                                    </div>
                                    
                                </div>
    
         
        <div class="rela-block caps greyed">Skill Details</div>
        
         <table class='table' id="bio1" style="COLOR:BLACK;font-family: ">
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
                        <input type="submit" class="btn btn-warning" value="Download PDF" onclick="Export()"/><br>
                        <input type="submit" onclick="window.print()" class="btn btn-warning" value="Print" />
                        
                        <!--<button type="submit" class="btn btn-outline-info btn-rounded text-center" data-mdb-ripple-color="dark" name="btn_print" id="btn1" onclick="window.print()">Download</button>-->           
                        
                        </div>

    <div class="rela-block content-container">
        
                    
                    <div class="work-experience-section px-3 px-lg-4">
                        <div class="rela-block caps greyed">Work Experience Details</div>

                        <div class="project_details">                         
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                    <h4 class="title2 " style="font-family: ">Working Experience</h4>
                                    <p class="title2 "><%=WORKINGEXP%></p>

                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                    <h4 class="title2 " style="font-family: ">No of Years</h4>
                                    <p class="title2 "><%=NOOFYEARSEXP%></p>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                    <h4 class="title2 " style="font-family: ">Compony Details</h4>
                                    <p class="title2 "><%=COMPONYDETAILS%></p>

                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                    <h4 class="title2" style="font-family: ">Working Summary</h4>
                                    <p class="title2"><%=WORKINGSUMMARY%></p>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                    <h4 class="title2 " style="font-family:">Hobbies</h4>
                                    <p class="title2 " ><%=HOBBIES%></p>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                    <h4 class="title2" style="font-family: ">Project Details</h4>
                                    <p class="title2"><%=EXTRACIRCULAMACTIVITIES%></p>
                                </div>
                            </div>
                        </div> 
                    </div>
                       <div class="work-experience-section px-3 px-lg-4">
                            <div class="rela-block caps greyed">Academic Details</div>

                            <div class="project_details">                         
                                <div class="row">
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">School Board</h4>
                                        <p class="title2"><%=SCHOOLBOARD%></p>

                                    </div>

                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">SSC Year</h4>
                                        <p class="title2 "><%=NOOFYEARSEXP%></p>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">HSC Board</h4>
                                        <p class="title2"><%= COLLEGEHSCBOARD %></p>

                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">HSC YEAR</h4>
                                        <p class="title2"><%= HSCYEAR %></p>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">University</h4>
                                        <p class="title2 " ><%=HOBBIES%></p>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">Degree</h4>
                                        <p class="title2"><%= DEGREE %></p>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">Passing Year</h4>
                                        <p class="title2"><%=DEGREEPASSINGYEAR%></p>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">Post Graduation Title</h4>
                                        <p class="title2"><%=PG%></p>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">PG Passing Year</h4>
                                        <p class="title2"><%=PGPASSINGYEAR%></p>
                                    </div>
                                </div>
                            </div>    
                        </div>
<!--        <p class="long-margin">Retro DIY quinoa, mixtape williamsburg master cleanse bushwick tumblr chillwave dreamcatcher hella wolf paleo. Knausgaard semiotics truffaut cornhole hoodie, YOLO meggings gochujang tofu. Locavore ugh kale chips iPhone biodiesel typewriter freegan, kinfolk brooklyn kitsch man bun. Austin neutra etsy, lumbersexual paleo cornhole sriracha kinfolk meggings kickstarter. </p>
        <div class="rela-block caps greyed">Experience</div>

        <h3>Job #1</h3>
        <p class="light">First job description</p>
        <p class="justified">Plaid gentrify put a bird on it, pickled XOXO farm-to-table irony raw denim messenger bag leggings. Hoodie PBR&B photo booth, vegan chillwave meh paleo freegan ramps. Letterpress shabby chic fixie semiotics. Meditation sriracha banjo pour-over. Gochujang pickled hashtag mixtape cred chambray. Freegan microdosing VHS, 90's bicycle rights aesthetic hella PBR&B. </p>

        <h3>Job #2</h3>
        <p class="light">Second Job Description</p>
        <p class="justified">Beard before they sold out photo booth distillery health goth. Hammock franzen green juice meggings, ethical sriracha tattooed schlitz mixtape man bun stumptown swag whatever distillery blog. Affogato iPhone normcore, meggings actually direct trade lomo plaid franzen shoreditch. Photo booth pug paleo austin, pour-over banh mi scenester vice food truck slow-carb. Street art kogi normcore, vice everyday carry crucifix thundercats man bun raw denim echo park pork belly helvetica vinyl. </p>

        <h3>Job #3</h3>
        <p class="light">Third Job Description</p>
        <p class="justified">Next level roof party lo-fi fingerstache skateboard, kogi tumblr. Shabby chic put a bird on it chambray, 3 wolf moon swag beard brooklyn post-ironic taxidermy art party microdosing keffiyeh marfa. Put a bird on it 3 wolf moon cliche helvetica knausgaard. Mumblecore fingerstache lomo, artisan freegan keffiyeh paleo kinfolk kale chips street art blog flannel.</p>-->
    </div>
</div>
</div>
</body>
</html>
