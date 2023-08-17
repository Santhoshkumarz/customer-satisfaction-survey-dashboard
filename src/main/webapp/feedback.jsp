<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Satisfaction Survey</title>
    <link rel="stylesheet" href="style.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
 <style>
	.rating{
  display : flex;
}

.rating input{
  position : absolute;
  left     : -100vw;
}

.rating label{
  width      : 48px;
  height     : 48px;
  padding    : 48px 0 0;
  overflow   : hidden;
  background : url('image/stars.svg') no-repeat top left;
}

.rating:not(:hover) input:indeterminate + label,
.rating:not(:hover) input:checked ~ input + label,
.rating input:hover ~ input + label{
  background-position : -48px 0;
}

.rating:not(:hover) input:focus-visible + label{
  background-position : -96px 0;
}
 </style>
</head>
<body style="background-color:	 #f2f2f2;">

<!----Main component------>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%
String q1=request.getParameter("q1");
String q2=request.getParameter("q2");
String q3=request.getParameter("q3");
String q4=request.getParameter("q4");
String q5=request.getParameter("q5");
String q6=request.getParameter("q6");
String q7=request.getParameter("q7");
String q8=request.getParameter("q8");
String q9=request.getParameter("q9");
String q10=request.getParameter("q10");
String otherFeedbacks=request.getParameter("otherFeedbacks");
String email=request.getParameter("email");



try {
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chartjs", "root", "");
Statement stmt = con.createStatement();
int j=stmt.executeUpdate("insert into feedbacks(Excellent,Good,Average,Poor,Very_poor,otherFeedbacks,email) values('"+q1+"','"+q2+"','"+q3+"','"+q4+"','"+q5+"','"+q6+"','"+q7+"','"+q8+"','"+q9+"','"+q10+"','"+otherFeedbacks+"','"+email+"')");

}
catch(Exception e){}
%>

<h2 style="position:absolute;top:80px;left:220px;color:#3377ff;">Customer Feedback Form</h2>

<form method="post" action="feedback_process.jsp" >
<p style="position:relative;top:135px;left:220px;">1. How was your overall experience during your stay at our hotel?</p>
<div class="radio" style="position:relative;top:100px;left:980px;">
	
	<div class="q1">
	  <input id="rating1" type="radio" name="q1" value="1">
	  <label for="rating1">Excellent</label>
	  <input id="rating2" type="radio" name="q1" value="2">
	  <label for="rating2">Good</label>
	  <input id="rating3" type="radio" name="q1" value="3">
	  <label for="rating3">Average</label>
	  <input id="rating4" type="radio" name="q1" value="4">
	  <label for="rating4">Poor</label>
	  <input id="rating5" type="radio" name="q1" value="5">
	  <label for="rating5">Very Poor</label>
	</div>
	<hr style="position:relative;right:760px;top:5px;width:1270px;">
</div>

<p style="position:relative;top:105px;left:220px;">2.How satisfied were you with the cleanliness and maintenance of <br><br>your room?</p>
<div class="radio" style="position:relative;top:40px;left:980px;">
	
	<div class="q2">
	  <input id="rating1" type="radio" name="q2" value="1">
	  <label for="rating1">Excellent</label>
	  <input id="rating2" type="radio" name="q2" value="2">
	  <label for="rating2">Good</label>
	  <input id="rating3" type="radio" name="q2" value="3">
	  <label for="rating3">Average</label>
	  <input id="rating4" type="radio" name="q2" value="4">
	  <label for="rating4">Poor</label>
	  <input id="rating5" type="radio" name="q2" value="5">
	  <label for="rating5">Very Poor</label>
	</div>
	<hr style="position:relative;right:760px;top:10px;width:1270px;">
</div>

<p style="position:relative;top:60px;left:220px;">3. How was the quality of service provided by our staff?</p>
<div class="radio" style="position:relative;top:17px;left:980px;">
	
	<div class="q3">
	  <input id="rating1" type="radio" name="q3" value="1">
	  <label for="rating1">Excellent</label>
	  <input id="rating2" type="radio" name="q3" value="2">
	  <label for="rating2">Good</label>
	  <input id="rating3" type="radio" name="q3" value="3">
	  <label for="rating3">Average</label>
	  <input id="rating4" type="radio" name="q3" value="4">
	  <label for="rating4">Poor</label>
	  <input id="rating5" type="radio" name="q3" value="5">
	  <label for="rating5">Very Poor</label>
	</div>
	<hr style="position:relative;right:760px;top:5px;width:1270px;">
</div>

<p style="position:relative;top:20px;left:220px;">4.How satisfied were you with the Wi-Fi and internet connectivity provided <br><br> by our hotel?</p>
<div class="radio" style="position:relative;bottom:50px;left:980px;">
	
	<div class="q4">
	  <input id="rating1" type="radio" name="q4" value="1">
	  <label for="rating1">Excellent</label>
	  <input id="rating2" type="radio" name="q4" value="2">
	  <label for="rating2">Good</label>
	  <input id="rating3" type="radio" name="q4" value="3">
	  <label for="rating3">Average</label>
	  <input id="rating4" type="radio" name="q4" value="4">
	  <label for="rating4">Poor</label>
	  <input id="rating5" type="radio" name="q4" value="5">
	  <label for="rating5">Very Poor</label>
	</div>
	<hr style="position:relative;right:760px;top:20px;width:1270px;">
</div>

<p style="position:relative;bottom:25px;left:220px;">5.How satisfied were you with the variety of activities and entertainment <br><br> available at our resort?</p>
<div class="radio" style="position:relative;bottom:100px;left:980px;">
	
	<div class="q5">
	  <input id="rating1" type="radio" name="q5" value="1">
	  <label for="rating1">Excellent</label>
	  <input id="rating2" type="radio" name="q5" value="2">
	  <label for="rating2">Good</label>
	  <input id="rating3" type="radio" name="q5" value="3">
	  <label for="rating3">Average</label>
	  <input id="rating4" type="radio" name="q5" value="4">
	  <label for="rating4">Poor</label>
	  <input id="rating5" type="radio" name="q5" value="5">
	  <label for="rating5">Very Poor</label>
	</div>
	<hr style="position:relative;right:760px;top:35px;width:1270px;">
</div>

<p style="position:relative;bottom:55px;left:220px;">6.How satisfied were you with the location of our bed and breakfast?</p>
<div class="radio" style="position:relative;bottom:100px;left:980px;">
	
	<div class="q6">
	  <input id="rating1" type="radio" name="q6" value="1">
	  <label for="rating1">Excellent</label>
	  <input id="rating2" type="radio" name="q6" value="2">
	  <label for="rating2">Good</label>
	  <input id="rating3" type="radio" name="q6" value="3">
	  <label for="rating3">Average</label>
	  <input id="rating4" type="radio" name="q6" value="4">
	  <label for="rating4">Poor</label>
	  <input id="rating5" type="radio" name="q6" value="5">
	  <label for="rating5">Very Poor</label>
	</div>
	<hr style="position:relative;right:760px;top:5px;width:1270px;">
</div>

<p style="position:relative;bottom:100px;left:220px;">7. How satisfied were you with the food and beverage options available at <br><br>our resort?</p>
<div class="radio" style="position:relative;bottom:160px;left:980px;">
	
	<div class="q7">
	  <input id="rating1" type="radio" name="q7" value="1">
	  <label for="rating1">Excellent</label>
	  <input id="rating2" type="radio" name="q7" value="2">
	  <label for="rating2">Good</label>
	  <input id="rating3" type="radio" name="q7" value="3">
	  <label for="rating3">Average</label>
	  <input id="rating4" type="radio" name="q7" value="4">
	  <label for="rating4">Poor</label>
	  <input id="rating5" type="radio" name="q7" value="5">
	  <label for="rating5">Very Poor</label>
	</div>
	<hr style="position:relative;right:760px;top:25px;width:1270px;">
</div>

<p style="position:relative;bottom:125px;left:220px;">8.How was the noise level at our hotel during your stay?</p>
<div class="radio" style="position:relative;bottom:160px;left:980px;">
	
	<div class="q8">
	  <input id="rating1" type="radio" name="q8" value="1">
	  <label for="rating1">Excellent</label>
	  <input id="rating2" type="radio" name="q8" value="2">
	  <label for="rating2">Good</label>
	  <input id="rating3" type="radio" name="q8" value="3">
	  <label for="rating3">Average</label>
	  <input id="rating4" type="radio" name="q8" value="4">
	  <label for="rating4">Poor</label>
	  <input id="rating5" type="radio" name="q8" value="5">
	  <label for="rating5">Very Poor</label>
	</div>
	<hr style="position:relative;right:760px;top:5px;width:1270px;">
</div>

<p style="position:relative;bottom:155px;left:220px;">9.How satisfied were you with the amenities provided by our resort, such as <br><br>the pool, spa, and fitness center?</p>
<div class="radio" style="position:relative;bottom:220px;left:980px;">
	
	<div class="q9">
	  <input id="rating1" type="radio" name="q9" value="1">
	  <label for="rating1">Excellent</label>
	  <input id="rating2" type="radio" name="q9" value="2">
	  <label for="rating2">Good</label>
	  <input id="rating3" type="radio" name="q9" value="3">
	  <label for="rating3">Average</label>
	  <input id="rating4" type="radio" name="q9" value="4">
	  <label for="rating4">Poor</label>
	  <input id="rating5" type="radio" name="q9" value="5">
	  <label for="rating5">Very Poor</label>
	</div>
	<hr style="position:relative;right:760px;top:15px;width:1270px;">
</div>

<p style="position:relative;bottom:195px;left:220px;">10.Were there any areas where we could improve our services to make your<br><br> stay more comfortable?</p>
<div class="radio" style="position:relative;bottom:260px;left:980px;">
	
	<div class="q10">
	  <input id="rating1" type="radio" name="q10" value="1">
	  <label for="rating1">Excellent</label>
	  <input id="rating2" type="radio" name="q10" value="2">
	  <label for="rating2">Good</label>
	  <input id="rating3" type="radio" name="q10" value="3">
	  <label for="rating3">Average</label>
	  <input id="rating4" type="radio" name="q10" value="4">
	  <label for="rating4">Poor</label>
	  <input id="rating5" type="radio" name="q10" value="5">
	  <label for="rating5">Very Poor</label>
	</div>
	<hr style="position:relative;right:760px;top:15px;width:1270px;">
</div>
<p style="color:#2aa2a2;font-size:25px;position:relative;left:230px;bottom:230px;"><b>What should we change in order to live up to your expectations?</b></p>
<textarea  type="text" id="otherFeedbacks" name="otherFeedbacks" style="bottom:220px;position:relative;left:230px;width:70%;height:100px; border-radius:5px;"placeholder='Type here...'></textarea >

<p style="position:relative;left:240px;bottom:200px;font-size:25px;color:#2aa2a2;"><b>Email</b></p>
<p style="position:relative;left:240px;bottom:205px;">Only if you want to hear more from us</p>
<input type="email" name="email" id="email" style="position:relative;left:240px;border-radius:5px;bottom:200px;height:50px;width:400px;"placeholder="Enter your mail iD"></input>

	<input type="submit" value="submit" style="position:relative;left:240px;bottom:100px;width:250px;height:50px;border-radius:40px;background-color:#666666;color:#ffffff;"></input>
</form>


<!-- -Navbar -->
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>

<div class="wrapper">
  
  <div class="top_navbar">
    <div class="hamburger">
       <div class="one"></div>
       <div class="two"></div>
       <div class="three"></div>
    </div>
    <div class="top_menu">
      <div class="logo">
         Customer Satisfaction Survey
      </div>
      <ul>
        <li><a href="#">
          <i class="fas fa-search"></i>
          </a></li>
        <li><a href="#">
          <i class="fas fa-bell"></i>
          </a></li>
        <li><a href="#">
          <i class="fas fa-user"></i>
          </a></li>
      </ul>
    </div>
  </div>
  
  <div class="sidebar">
      <ul>
        <li><a href="index.jsp">
          <span class="icon"><i class="fas fa-book"></i></span>
          <span class="title">Dashboard</span>
          </a></li>
        <li><a href="datafecth.jsp">
          <span class="icon"><i class="fas fa-file-video"></i></span>
          <span class="title">Survey</span>
          </a></li>
        <li><a href="chart.jsp">
          <span class="icon"><i class="fas fa-volleyball-ball"></i></span>
          <span class="title">Chart</span>
          </a></li>
        <li><a href="feedbacks.jsp" >
          <span class="icon"><i class="fas fa-blog"></i></span>
          <span class="title">Feedbacks</span>
          </a></li>
        <li><a href="reviews.jsp">
          <span class="icon"><i class="fas fa-leaf"></i></span>
          <span class="title">Reviews</span>
          </a></li>
    </ul>
  
  </div>
  
</div>



<script src="script.js"></script>
</body>
</html>