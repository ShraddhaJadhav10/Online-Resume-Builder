<%-- 
    Document   : MainForm
    Created on : Oct 19, 2022, 11:33:15 PM
    Author     : Soft-Tech1
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
      <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Resume Builder</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <script>
          function Change()
          {
              box=document.getElementById("personaldet");
              btn=document.getElementById("b1");
              if (box.style.visibility != 'hidden') {
                    box.style.visibility = 'hidden';
                    btn.textContent = 'Hide div';
                  } 
              else {
                    box.style.visibility = 'visible';
                    btn.textContent = 'Show div';
                  }
              
          }
          
          
      </script>
      
   </head>
   <!-- body -->
   <body class="main-layout contact_page">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#" /></div>
      </div>

     <div class="wrapper">

      <!-- end loader --> 
      <div class="sidebar">
         <!-- Sidebar  -->
        <nav id="sidebar">

            <div id="dismiss">
                <i class="fa fa-arrow-left"></i>
            </div>

            <ul class="list-unstyled components">
                
                
                <li>
                    
                    <a href="home page/home page/home.html">Home</a>
                </li>
              <li>
                    
                    <a href="SelectTemplate.jsp">Dashboard</a>
                </li>
                
               
            </ul>

        </nav>
      </div>
     
     <div id="content">
      <!-- header -->
      <header>
         <!-- header inner -->
         <div class="header">
           
         <div class="container-fluid">
             
            <div class="row">
               <div class="col-lg-3 logo_section">
                  <div class="full">
                     <div class="center-desk">
                        <div class="logo">
                            <!--<a href="index.html">-->
                                <h1 style="font-size:xx-large;color:rgba"><b>Online Resume Builder</b>
                                </h1>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-lg-9">
                  <div class="right_header_info">
                      <ul style="color:red;font-size: large">
                        

                         <li>
                           <button type="button" id="sidebarCollapse">
                              <img src="images/menu_icon.png" alt="#" />
                           </button>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
            </div>
        
         <!-- end header inner --> 
      </header>
      <!-- end header -->
      
<div class="contactus">
   <div class="container-fluid">
            <div class="row">
               <div class="col-md-8 offset-md-2">
                  <div class="title">
                     <h2>Enter Your Details</h2>
                    
                  </div>
               </div>
            </div>
          </div>
</div>
        <%!
        Connection cn;
        Statement st;
        ResultSet rs;
         public int GetNewID()
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
         String CAND_ID="",CAND_FULLNM="",CAND_DOB="",CAND_GENDER="",COUNTRY_ID="",STATE_ID="",CITY_ID="",CAND_ADDR="",CAND_MOBILE="",CAND_PHNO="",CAND_EMAIL="",CAND_PHOTO="",password="";
         int flag=0;
String CAND_DET_ID="" ,SCHOOLBOARD="" ,SSCYEAR="" ,COLLEGEHSCBOARD="" ,HSCYEAR="" ,DEGREEUNIVERSITY="" ,
        DEGREE="" ,DEGREEPASSINGYEAR="" ,PGDEGREEUNIVERSITY="" ,PG="" ,PGPASSINGYEAR="" ,WORKINGEXP="" ,NOOFYEARSEXP="",COMPONYDETAILS="" ,WORKINGSUMMARY="" ,HOBBIES="" ,EXTRACIRCULAMACTIVITIES="";

            
        %>
        <%
              Class.forName("com.mysql.jdbc.Driver");
             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
             st=cn.createStatement();
          
             rs=st.executeQuery("select * from CANDIDATE_MASTER where CAND_ID="+session.getAttribute("id"));
                         
             while(rs.next())
             {
             
                CAND_ID=rs.getString(1);
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
                        password=rs.getString(12);
                        CAND_PHOTO=rs.getString(13);

             }
             rs.close();
               rs=st.executeQuery("select * from CANDIDATE_DETAILS where CAND_ID="+session.getAttribute("id"));
                         
             while(rs.next())
             {
                        CAND_DET_ID=rs.getString(1);
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
               
               
        %>
<!--        <button  class="btn btn-dark" id="b1" onclick="Change()">Show</button>     -->
       
         <div class="contact">
         <div class="container-fluid padddd">
           
              <div class="row main_form">
                <div class="col-md-2"></div>
               <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                   <form action="UpdateCode.jsp">
                    <div class="row" id="personaldet">
                        
                  
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     
                     Id: <input type="text"  class="form-control" value="<%=CAND_ID%>" name="CAND_ID.text"/><br>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     Full Name: <input type="text" class="form-control" value="<%=CAND_FULLNM%>" name="CAND_FULLNM.text"/><br>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                    Date Of Birth: <input type="date" class="form-control" value="<%=CAND_GENDER%>" name="CAND_DOB.text"/><br>
                  </div>
                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                         Gender: <input type="text" class="form-control" value="<%=CAND_GENDER%>" name="CAND_GENDER.text"/><br>
                        </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
            Country: <select name="d1" class="form-control" style="height:auto">
                 <%
                  
                    rs=st.executeQuery("select * from COUNTRY");
                    while(rs.next())
                    {
                 %>
                 <option value="<%=rs.getString(1)%>">
                                <%=rs.getString(2)%>
                 </option>
                 <%
                    }
                 %>
             </select><br>
              </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
             State: <select name="d2" class="form-control" style="height:auto">
                 <%
                    Class.forName("com.mysql.jdbc.Driver");
             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
             st=cn.createStatement();
                    rs=st.executeQuery("select * from STATE");
                    while(rs.next())
                    {
                 %>
                 <option value="<%=rs.getString(1)%>">
                                <%=rs.getString(3)%>
                 </option>
                 <%
                    }
                 %>
             </select><br>
              </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
            City: <select name="d3" class="form-control" style="height:auto">
                 <%
                    Class.forName("com.mysql.jdbc.Driver");
             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
             st=cn.createStatement();
                    rs=st.executeQuery("select * from CITY");
                    while(rs.next())
                    {
                 %>
                 <option value="<%=rs.getString(1)%>">
                                <%=rs.getString(3)%>
                 </option>
                 <%
                    }
                 %>
             </select><br>
                </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
             
            Address:
            <textarea class="form-control" value="<%=CAND_ADDR%>" name="CAND_ADDR.text"></textarea>
<!--            <input type="text" class="form-control" value="<%=CAND_ADDR%>" name="CAND_ADDR.text"/><br>-->
             </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
            Mobile: <input type="text" class="form-control" value="<%=CAND_MOBILE%>" name="CAND_MOBILE.text"/><br>
             </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
            Phone: <input type="text" class="form-control" value="<%=CAND_PHNO%>" name="CAND_PHNO.text"/><br>
             </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
            Email: <input type="text" class="form-control" value="<%=CAND_EMAIL%>" name="CAND_EMAIL.text"/><br>
             </div>
              <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                  Password: <input type="text" class="form-control" value="<%=password%>" name="password.text"/><br>
             </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
            Photo: <input type="file" class="form-control" value="<%=CAND_PHOTO%>" name="CAND_PHOTO.text"/><br>
             </div>
             
                    </div>
             <h1>Academic Details-</h1>
             <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                         Candidate details Id: <input type="text" class="form-control" value="<%= CAND_DET_ID %>"  name="CAND_DET_ID.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                         School Board: <input type="text" class="form-control" value="<%= SCHOOLBOARD %>"  name="SCHOOLBOARD.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     S.S.C. Year With Percentage: <input type="text" class="form-control" value="<%= SSCYEAR  %>"  name="SSCYEAR.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     H.S.C. Board: <input type="text" class="form-control" value="<%= COLLEGEHSCBOARD %>" name="COLLEGEHSCBOARD.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     H.S.C. Year With Percentage: <input type="text" class="form-control" value="<%= HSCYEAR %>" name="HSCYEAR.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     Degree University: <input type="text" class="form-control" value="<%= DEGREEUNIVERSITY  %>"  name="DEGREEUNIVERSITY.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     Degree Title: <input type="text" class="form-control" value="<%= DEGREE %>"  name="DEGREE.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     Degree Passing Year With Percentage: <input type="text" class="form-control" value="<%= DEGREEPASSINGYEAR %>"  name="DEGREEPASSINGYEAR.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     Post Graduation University: <input type="text" class="form-control" value="<%=  PGDEGREEUNIVERSITY %>"  name="PGDEGREEUNIVERSITY.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     Post Graduation Title: <input type="text" class="form-control"  value="<%=PG  %>"  name="PG.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     Post Graduation Passing Year With Percentage<input type="text" class="form-control" value="<%= PGPASSINGYEAR  %>"  name="PGPASSINGYEAR.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     Working Experience: <input type="text" class="form-control" value="<%= WORKINGEXP %>"  name="WORKINGEXP.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     No. Of Years Experience: <input type="text" class="form-control"  value="<%= NOOFYEARSEXP  %>" name="NOOFYEARSEXP.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     Compony Details: <input type="text" class="form-control" value="<%=COMPONYDETAILS  %>"  name="COMPONYDETAILS.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     Working Summary: <input type="text" class="form-control" value="<%= WORKINGSUMMARY %>"  name="WORKINGSUMMARY.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     Hobbies And Extra Curricular Activities: <input type="text" class="form-control"  value="<%= HOBBIES %>" name="HOBBIES.text"/><br>
                     </div>
                     <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     <!--Project Details <input type="text" class="form-control" value="<%=EXTRACIRCULAMACTIVITIES  %>" name="EXTRACIRCULAMACTIVITIES.text"/><br>-->
                     Project Details: <textarea class="form-control" value="<%=EXTRACIRCULAMACTIVITIES%>" name="EXTRACIRCULAMACTIVITIES.text"></textarea>  
                     </div>
             </div>
                                  <input type="submit" value="Update" class="btn btn-warning"    />
                    
             
        </form>
      
</div>
                   
            </div>
             
         </div>
          </div>
    
          
    
   </div>

</div>

   <div class="overlay"></div>

      <!-- Javascript files--> 
      <script src="js/jquery.min.js"></script> 
      <script src="js/popper.min.js"></script> 
      <script src="js/bootstrap.bundle.min.js"></script> 
      <script src="js/jquery-3.0.0.min.js"></script> 
      <script src="js/plugin.js"></script> 
      <!-- sidebar --> 
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script> 
      <script src="js/custom.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
     <script type="text/javascript">
        $(document).ready(function () {
            $("#sidebar").mCustomScrollbar({
                theme: "minimal"
            });

            $('#dismiss, .overlay').on('click', function () {
                $('#sidebar').removeClass('active');
                $('.overlay').removeClass('active');
            });

            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').addClass('active');
                $('.overlay').addClass('active');
                $('.collapse.in').toggleClass('in');
                $('a[aria-expanded=true]').attr('aria-expanded', 'false');
            });
        });
      </script>


      <script>
         $(document).ready(function(){
         $(".fancybox").fancybox({
         openEffect: "none",
         closeEffect: "none"
         });
         
         $(".zoom").hover(function(){
         
         $(this).addClass('transition');
         }, function(){
         
         $(this).removeClass('transition');
         });
         });
         
      </script> 


   <script>

      // This example adds a marker to indicate the position of Bondi Beach in Sydney,
      // Australia.
      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 11,
          center: {lat: 40.645037, lng: -73.880224},
          });

        var image = 'images/maps-and-flags.png';
        var beachMarker = new google.maps.Marker({
          position: {lat: 40.645037, lng: -73.880224},
          map: map,
          icon: image
        });
      }
    </script>
   <!-- google map js -->
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
      <!-- end google map js -->

   </body>
</html>


