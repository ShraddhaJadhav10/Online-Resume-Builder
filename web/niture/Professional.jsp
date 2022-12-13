<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Right Resume</title>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="crossorigin"/>
        <link rel="preload" as="style" href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&amp;family=Roboto:wght@300;400;500;700&amp;display=swap"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&amp;family=Roboto:wght@300;400;500;700&amp;display=swap" media="print" onload="this.media = 'all'"/>
        <noscript>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&amp;family=Roboto:wght@300;400;500;700&amp;display=swap"/>
        </noscript>
        <link href="../right-resume_free_1-2-0 (1)/css/font-awesome/css/all.min.css?ver=1.2.0" rel="stylesheet">
        <link href="../right-resume_free_1-2-0 (1)/css/bootstrap.min.css?ver=1.2.0" rel="stylesheet">
        <link href="../right-resume_free_1-2-0 (1)/css/aos.css?ver=1.2.0" rel="stylesheet">
        <link href="../right-resume_free_1-2-0 (1)/css/main.css?ver=1.2.0" rel="stylesheet">
        <noscript>
        <style type="text/css">
            [data-aos] {
                opacity: 1 !important;
                transform: translate(0) scale(1) !important;
            }
        </style>
        </noscript>
    </head>
    <body id="top">
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
            String candid = "";
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
        <header class="d-print-none">
            <div class="container text-center text-lg-left">
                <div class="py-3 clearfix">
                    <!--<h1 class="site-title mb-0"><%=CAND_FULLNM%></h1>-->
<!--                    <div class="site-nav">
                        <nav role="navigation">
                            <ul class="nav justify-content-center">
                                <li class="nav-item"><a class="nav-link" href="https://twitter.com/templateflip" title="Twitter"><i class="fab fa-twitter"></i><span class="menu-title sr-only">Twitter</span></a>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="https://www.facebook.com/templateflip" title="Facebook"><i class="fab fa-facebook"></i><span class="menu-title sr-only">Facebook</span></a>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="https://www.instagram.com/templateflip" title="Instagram"><i class="fab fa-instagram"></i><span class="menu-title sr-only">Instagram</span></a>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="https://github.com/templateflip" title="Github"><i class="fab fa-github"></i><span class="menu-title sr-only">Github</span></a>
                                </li>
                            </ul>
                        </nav>
                    </div>-->
                </div>
            </div>
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
        </header>
        <div id="demo">
        <div class="page-content">
            <div class="container">
                <div class="cover shadow-lg bg-white">
                    <div class="cover-bg p-3 p-lg-4 text-white">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="avatar hover-effect bg-white shadow-sm p-1">
                                    <img src="<%=CAND_PHOTO%>" width="200" height="200" /></div>
                            </div>
                            <div class="col-lg-8 col-md-4 text-center text-md-start">
                                <h2 class="h1 mt-2" data-aos="fade-left" data-aos-delay="0"><%= CAND_FULLNM%></h2>
                                
                                <div class="d-print-none" data-aos="fade-left" data-aos-delay="200"><a class="btn btn-light text-dark shadow-sm mt-1 me-1" onclick="toPDF ()" target="_blank">Download</a></div>
                                 <div class="d-print-none" data-aos="fade-left" data-aos-delay="200"><a class="btn btn-light text-dark shadow-sm mt-1 me-1" onclick="window.print()" href="right-resume.pdf" target="_blank">Print</a></div>

                            </div>
                        </div>
                    </div>
                    <div class="about-section pt-4 px-3 px-lg-4 mt-1">
                        <div class="row">
                            <div class="col-md-6">
                                <h2 class="h3 mb-3" style="color :blue;">About Me</h2>
                                <p>Hello!I am <%= CAND_FULLNM%>. To pursue a challenging career and be a part of progressive organization that gives a scope to enhance my
knowledge and utilizing my skills towards the growth of the organization.</p>
                            </div>
                            <div class="col-md-5 offset-md-1">
                                <div class="row mt-2">
                                    <div class="col-sm-4">
                                        <div class="pb-1">Date Of Birth</div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="pb-1 text-secondary"><%= CAND_DOB%></div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="pb-1">Email</div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="pb-1 text-secondary"><%= CAND_EMAIL%></div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="pb-1">Phone</div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="pb-1 text-secondary"><%= CAND_PHNO%></div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="pb-1">Address</div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="pb-1 text-secondary"><%= CAND_ADDR%></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="d-print-none"/>
                    <div class="skills-section px-3 px-lg-4">
                        <h2 class="h2 mb-3" style="color :blue;">Professional Skills</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <%   rs = st.executeQuery("select * from CANDIDATE_SKILLS   where CAND_ID=" + candid);
                                    while (rs.next()) {
                                        SKILLSKNOW = rs.getString(3);
                                        SKILLSDETAILS = rs.getString(4);
                                        SKILLAVGPERCENTAGE = rs.getString(5);

                                %>



                                <div class="mb-2"><span><%=SKILLSKNOW%></span>
                                    <div class="progress my-1">
                                        <div class="progress-bar bg-primary" role="progressbar" data-aos="zoom-in-right" data-aos-delay="100" data-aos-anchor=".skills-section" style="width: <%=SKILLAVGPERCENTAGE%>%" aria-valuenow="<%= SKILLAVGPERCENTAGE%>" aria-valuemin="0" aria-valuemax="40"></div>
                                    </div>
                                </div>

                                <%
                                    }
                                %>
                            </div>

                        </div>
                    </div>
                    <hr class="d-print-none"/>
                    
                    <div class="work-experience-section px-3 px-lg-4">
                        <h2 class="h2 mb-4" style="color :blue;">Work Experience</h2>

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
                        <hr class="d-print-none"/>
                        <div class="work-experience-section px-3 px-lg-4">
                            <h2 class="h2 mb-4" style="color :blue;">Academic Details</h2>

                            <div class="project_details">                         
                                <div class="row">
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">School Board</h4>
                                        <p class="title2"><%=SCHOOLBOARD%></p>

                                    </div>

                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">S.S.C. Year</h4>
                                        <p class="title2 "><%=NOOFYEARSEXP%></p>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">H.S.C. Board</h4>
                                        <p class="title2"><%= COLLEGEHSCBOARD %></p>

                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">H.S.C. YEAR</h4>
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
                                        <h4 class="title2" style="font-family: ">Post Graduation</h4>
                                        <p class="title2"><%=PG%></p>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                        <h4 class="title2" style="font-family: ">Post Graduation Passing Year</h4>
                                        <p class="title2"><%=PGPASSINGYEAR%></p>
                                    </div>
                                </div>
                            </div>    
                        </div>

                        <!--                        <div class="project_details col-md-6">
                                                    
                                                    <h2 class="title2" style="font-family: fantasy;">Working Experience</h2>
                                                    <h3 class="title2"><%=WORKINGEXP%></h3>
                                                    <h2 class="title2" style="font-family: fantasy;">No of Years</h2>
                                                    <h3 class="title2"><%=NOOFYEARSEXP%></h3>
                                                    <h2 class="title2" style="font-family: fantasy;">Compony Details</h2>
                                                    <h3 class="title2"><%=COMPONYDETAILS%></h3>
                        
                        
                                                </div>
                        
                                                <div class="col-md-6">
                                                    <h2 class="title2" style="font-family: fantasy;">Working Summary</h2>
                                                    <h3 class="title2"><%=WORKINGSUMMARY%></h3>
                                                    <h2 class="title2" style="font-family: fantasy;">Hobbies</h2>
                                                    <h3 class="title2" ><%=HOBBIES%></h3>
                                                    <h2 class="title2" style="font-family: fantasy;">Extra Circular Activities</h2>
                                                    <h3 class="title2"><%=EXTRACIRCULAMACTIVITIES%></h3>
                        
                                                </div>-->
                        <!--    <div class="timeline">
                              <div class="timeline-card timeline-card-primary card shadow-sm">
                                <div class="card-body">
                                  <div class="h5 mb-1">Frontend Developer <span class="text-muted h6">at Creative Agency</span></div>
                                  <div class="text-muted text-small mb-2">May, 2015 - Present</div>
                                  <div>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition.</div>
                                </div>
                              </div>
                              <div class="timeline-card timeline-card-primary card shadow-sm">
                                <div class="card-body">
                                  <div class="h5 mb-1">Graphic Designer <span class="text-muted h6">at Design Studio</span></div>
                                  <div class="text-muted text-small mb-2">June, 2013 - May, 2015</div>
                                  <div>Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.</div>
                                </div>
                              </div>
                              <div class="timeline-card timeline-card-primary card shadow-sm">
                                <div class="card-body">
                                  <div class="h5 mb-1">Junior Web Developer <span class="text-muted h6">at Indie Studio</span></div>
                                  <div class="text-muted text-small mb-2">Jan, 2011 - May, 2013</div>
                                  <div>User generated content in real-time will have multiple touchpoints for offshoring. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.</div>
                                </div>
                              </div>-->
                    </div>
                </div>
            </div>


        </div>
    


<script src="../right-resume_free_1-2-0 (1)/scripts/bootstrap.bundle.min.js?ver=1.2.0"></script>
<script src="../right-resume_free_1-2-0 (1)/scripts/aos.js?ver=1.2.0"></script>
<script src="../right-resume_free_1-2-0 (1)/scripts/main.js?ver=1.2.0"></script>
</body>
</html>