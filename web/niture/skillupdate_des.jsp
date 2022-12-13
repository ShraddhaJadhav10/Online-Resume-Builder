<%-- 
    Document   : skillupdate_des
    Created on : Nov 15, 2022, 3:20:48 PM
    Author     : SHRADDHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
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
                     <h2>Update Your Skill Details</h2>
                    
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
                rs=st.executeQuery("select max(CAND_ID)from candidate_skills");
                if(rs.next())
                {
                    maxid=rs.getInt(1);
                }
            }
            catch(Exception e)
            {
                //out.println("Exception is : " +e);
            }
            return (maxid+1);
        } 
         %>
       <%
         String SKILL_ID="",CAND_ID="",SKILLSKNOW="",SKILLSDETAILS="",SKILL_AVG_PERCENTAGE="";
         int flag=0;
            
       
        
        
            Class.forName("com.mysql.jdbc.Driver");
             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
             st=cn.createStatement();
            if(request.getQueryString()!= null)
            {
                flag=1;
                SKILL_ID=request.getParameter("SKILL_ID");
                CAND_ID=(String)session.getAttribute("id").toString();
                SKILLSKNOW=request.getParameter("SKILLSKNOW");
                SKILLSDETAILS=request.getParameter("SKILLSDETAILS");
                SKILLSDETAILS=request.getParameter("SKILLSDETAILS");
            }
            else
            {
               CAND_ID=(String)session.getAttribute("id").toString();
            }
        %>
       
 <div class="contact">
         <div class="container-fluid padddd">
           
              <div class="row main_form">
                <div class="col-md-2"></div>
               <div class="col-xl-10 col-lg-10 col-md-10 col-sm-10">
                   <form action="SkillUpdateCode.jsp">
                    <div class="row" id="personaldet">
                        
                  
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     
                     Skill Id : <input type="text"  class="form-control" value="<%=SKILL_ID%>" name="SKILL_ID.text"/><br>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     
                     Candidate Id : <input type="text"  class="form-control" value="<%=CAND_ID%>" name="CAND_ID.text"/><br>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     
                     Skill Knowledge : <input type="text"  class="form-control" value="<%=SKILLSKNOW%>" name="SKILLSKNOW.text"/><br>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     
                     Skill Details : <input type="text"  class="form-control" value="<%=SKILLSDETAILS%>" name="SKILLSDETAILS.text"/><br>
                  </div>
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
                     
                      Skill Scale : <input type="range"  class="form-control" value="<%=SKILL_AVG_PERCENTAGE%>" name="SKILL_AVG_PERCENTAGE.text"/><br>
                  </div>
                    </div>
                   <%
               if(flag==0)
               {
                 %>
                 <input type="submit" class="btn btn-dark" value="Delete" name="b"/>
                 <input type="submit" class="btn btn-dark" value="Update" name="b"/>
                 <!--<input type="submit" class="btn btn-dark" value="Delete" disabled="true" name="b"/>-->
                 <%
               }
               else
               {
             %>
               <input type="submit" class="btn btn-dark" value="Delete" name="b"/>
                 <input type="submit" class="btn btn-dark" value="Update"  name="b"/>
                 <!--<input type="submit" class="btn btn-dark" value="Delete"  name="b"/>-->
                 <%
               }
               %>
                    
             
        </form>
                <%
              Class.forName("com.mysql.jdbc.Driver");
             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/resume","root","");
             st=cn.createStatement();
          
            rs=st.executeQuery("select * from candidate_skills where cand_id="+CAND_ID);
             
             out.println("<table class='table'><tr><th>Skill ID</th><th>Candidate id</th><th>Skills Knowledge</th><th>Skills Details</th><th>Skills Average Percentage</th> <th>Select</th></tr>");
             while(rs.next())
             {
                out.println("<tr>");
                out.println("<td>"+rs.getInt(1)+"</td>");
                out.println("<td>"+rs.getInt(2)+"</td>");
                 out.println("<td>"+rs.getString(3)+"</td>");
                 out.println("<td>"+rs.getString(4)+"</td>");
                 out.println("<td>"+rs.getString(5)+"</td>");
                  out.println("<td><a href='skillupdate_des.jsp?SKILL_ID="+rs.getInt(1)+"&CAND_ID="+rs.getInt(2)+"&SKILLSKNOW="+rs.getString(3)+"&SKILLSDETAILS="+rs.getString(4)+"&SKILL_AVG_PERCENTAGE="+rs.getString(5)+"'>Select</a></td>");
               
               out.println("</tr>");
             }
             out.println("</table>");
             cn.close();
%> 
      
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
