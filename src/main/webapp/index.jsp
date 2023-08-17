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

</head>
<body style="background-color:	 #f2f2f2;">

<!----Main component------>
 <div class="main_container">
    <div class="item">
		<h2><b>Welcome Dashboard</b></h2>
		<h4 style="color:#3366ff;">The well-satisfied customer will bring the repeat sale that counts.</h4>
	<!--Date -->
		<span id="demo" ></span>
	<!---Hotel Image---->
		<img  class="img" alt="no  image" src="image/CSAT.png" >
	<!----Card-->
		<div class="card_container">
			<div class="card" style="background-color: #00b386 ;">
					<span style="color:white;text-align:center;font-size:18px;"><b>Excellent</b></span><br>
					<p style="position:absolute;left:100px;top:55px;color:white;text-align:center;font-size:30px;"><b>42</b></p>
					<p style="position:absolute;left:40px;top:110px;color:white;text-align:center;font-size:18px;"><b>10.00 % (30 days)</b></p>
			</div>
				<br>
			<div class="card" style="background-color: #00b359 ;">
			
				<span style="color:white;text-align:center;font-size:18px;"><b>Good</b></span><br>
					<p style="position:absolute;left:80px;top:55px;color:white;text-align:center;font-size:30px;"><b>85.71 %</b></p>
					<p style="position:absolute;left:40px;top:110px;color:white;text-align:center;font-size:18px;"><b>22.00 % (30 days)</b></p>

			</div>
			
			
			<div class="card" style="background-color:#006bb3 ; position:relative;top:370px;left:310px;">
					<span style="color:white;text-align:center;font-size:18px;"><b>Average</b></span><br>
					<p style="position:absolute;left:80px;top:55px;color:white;text-align:center;font-size:30px;"><b>14.29 %</b></p>
					<p style="position:absolute;left:40px;top:110px;color:white;text-align:center;font-size:18px;"><b>2.00 % (30 days)</b></p>
				
			</div>
				<br>
			<div class="card" style="background-color: #ffa64d; position:relative;top:370px;left:310px;">
					<span style="color:white;text-align:center;font-size:18px;"><b>Poor</b></span><br>
					<p  style="position:absolute;left:80px;top:70px;color:white;text-align:center;font-size:25px;"><b>54.76 %</b></p>
					<p style="position:absolute;left:40px;top:110px;color:white;text-align:center;font-size:18px;"><b>0.23 % (30 days)</b></p>		
			</div>
			<br>
			<div class="card" style="background-color: #ff4d4d; position:relative;top:540px;left:-230px;">
					<span style="color:white;text-align:center;font-size:18px;"><b>Very Poor</b></span><br>
					<p  style="position:absolute;left:80px;top:70px;color:white;text-align:center;font-size:25px;"><b>54.76 %</b></p>
					<p style="position:absolute;left:40px;top:110px;color:white;text-align:center;font-size:18px;"><b>0.23 % (30 days)</b></p>		
			</div>
			<br>
			<div class="card" style="background-color: #ff4d88; position:relative;top:370px;left:1120px;">
					<span style="color:white;text-align:center;font-size:18px;"><b>Net</b></span><br>
					<p  style="position:absolute;left:80px;top:70px;color:white;text-align:center;font-size:25px;"><b>54.76 %</b></p>
					<p style="position:absolute;left:40px;top:110px;color:white;text-align:center;font-size:18px;"><b>0.23 % (30 days)</b></p>		
			</div>
	
		<!-----Progress-->
			<div></div>
		
		</div> 

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
        <li><a href="feedback.jsp" >
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

    
  </div>
</div>

<script src="script.js"></script>
</body>
</html>