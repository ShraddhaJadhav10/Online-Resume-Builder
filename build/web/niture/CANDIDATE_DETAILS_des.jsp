<%-- 
    Document   : CANDIDATE_DETAILS_des
    Created on : 17 Oct, 2022, 2:50:01 PM
    Author     : softtech
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
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
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
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
                     <h2>Country</h2>
                    
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
         String CAND_DET_ID="" ,CAND_ID="" ,SCHOOLBOARD="" ,SSCYEAR="" ,COLLEGEHSCBOARD="" ,HSCYEAR="" ,DEGREEUNIVERSITY="" ,
                 DEGREE="" ,DEGREEPASSINGYEAR="" ,PGDEGREEUNIVERSITY="" ,PG="" ,PGPASSINGYEAR="" ,WORKINGEXP="" ,NOOFYEARSEXP="" ,
                 COMPONYDETAILS="" ,WORKINGSUMMARY="" ,HOBBIES="" ,EXTRACIRCULAMACTIVITIES="";
         int flag=0;

            
        %>
        <%
              Class.forName("com.mysql.jdbc.Driver");
             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
             st=cn.createStatement();
            
            
                CAND_DET_ID=String.valueOf(GetNewID());
            
        %>
         <div class="contact">
         <div class="container-fluid padddd">
           
            <div class="row main_form">
                <div class="col-md-2"></div>
               <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
        <form action="CANDIDATE_DETAILS_master.jsp">
             
           
           CAND_DET_ID<input type="text" class="form-control" class="form-control" value="<%=CAND_DET_ID%>" name="CAND_DET_ID.text"/><br>
           CAND_ID <select name="d1" class="form-control">
                 <%
                  
                    rs=st.executeQuery("select * from CANDIDATE_MASTER");
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
SCHOOL Board: <input type="text" class="form-control" value="<%=SCHOOLBOARD%>" name="SCHOOLBOARD.text"/><br>
S.S.C. Year With Percentage: <input type="text" class="form-control" value="<%=SSCYEAR%>" name="SSCYEAR.text"/><br>
College H.S.C. Board: <input type="text" class="form-control" value="<%=COLLEGEHSCBOARD%>" name="COLLEGEHSCBOARD.text"/><br>
H.S.C. Year With Percentage: <input type="text" class="form-control" value="<%=HSCYEAR%>" name="HSCYEAR.text"/><br>
Degree University: <input type="text" class="form-control" value="<%=DEGREEUNIVERSITY%>" name="DEGREEUNIVERSITY.text"/><br>
Degree Title : <input type="text" class="form-control" value="<%=DEGREE%>" name="DEGREE.text"/><br>
Degree Passing Year With Percentage: <input type="text" class="form-control" value="<%=DEGREEPASSINGYEAR%>" name="DEGREEPASSINGYEAR.text"/><br>
Post Graduation Degree University: <input type="text" class="form-control" value="<%=PGDEGREEUNIVERSITY%>" name="PGDEGREEUNIVERSITY.text"/><br>
Post Graduation Title: <input type="text" class="form-control" value="<%=PG%>" name="PG.text"/><br>
Post Graduation Passing Year With Percentage: <input type="text" class="form-control" value="<%=PGPASSINGYEAR%>" name="PGPASSINGYEAR.text"/><br>
Working Experience: <input type="text" class="form-control" value="<%=WORKINGEXP%>" name="WORKINGEXP.text"/><br>
No. Of Years Experience: <input type="text" class="form-control" value="<%=NOOFYEARSEXP%>" name="NOOFYEARSEXP.text"/><br>
Company Details:<input type="text" class="form-control" value="<%=COMPONYDETAILS%>" name="COMPONYDETAILS.text"/><br>
Working Summary: <input type="text" class="form-control" value="<%=WORKINGSUMMARY%>" name="WORKINGSUMMARY.text"/><br>
Hobbies And Extra Curricular Activities: <input type="text" class="form-control" value="<%=HOBBIES%>" name="HOBBIES.text"/><br>
Project Details:  <textarea class="form-control" value="<%=EXTRACIRCULAMACTIVITIES%>" name="EXTRACIRCULAMACTIVITIES.text"></textarea><br>
             <input type="submit" class="btn btn-dark"  value="Insert" name="b"/>
     
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

