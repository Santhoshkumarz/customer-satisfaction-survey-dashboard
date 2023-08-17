<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Survey List Question</title>
	<link rel="stylesheet" href="style.css">
		<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	<link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	 <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body style="background-color:	 #f2f2f2;">
<div class="wrapper" style="background-color: rgb(180, 135, 71);">
		  <div class="top_navbar">
		    <div class="hamburgerm">
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
	        <li><a href="index.jsp"class="active">
	          <span class="icon"><i class="fas fa-book"></i></span>
	          <span class="title">Dashboard</span>
	          </a></li>
	        <li><a href="question.jsp">
	          <span class="icon"><i class="fas fa-file-video"></i></span>
	          <span class="title">Survey</span>
	          </a></li>
	        <li><a href="#">
	          <span class="icon"><i class="fas fa-volleyball-ball"></i></span>
	          <span class="title">Charts</span>
	          </a></li>
	        <li><a href="#" >
	          <span class="icon"><i class="fas fa-blog"></i></span>
	          <span class="title">Add_Survey</span>
	          </a></li>
	        <li><a href="#">
	          <span class="icon"><i class="fas fa-leaf"></i></span>
	          <span class="title">Feed_Backs</span>
	          </a></li>
	      
	    </ul>
	  </div>
	  
</div>
	<!-- ---Question -->
    	<label style="font-size:30px;left:220px;position:relative;top:100px;font-family: 'Montserrat', sans-serif;">Survey :</label>
          <div class="dropdown" style="position:relative;bottom:40px;">
            <button onclick="myFunction()" class="dropbtn" style="position: relative;bottom:30px;border-radius:5px">Survey Question </button>
            <div id="myDropdown" class="dropdown-content" >
              Question 1  : <a href="#">How was your overall experience during your stay at our hotel?</a><hr>
              Question 2  : <a href="#">How satisfied were you with the cleanliness and maintenance of your room?</a><hr>
              Question 3  : <a href="#">How was the quality of service provided by our staff?</a><hr>
              Question 4  : <a href="#">How satisfied were you with the Wi-Fi and internet connectivity provided by our hotel?</a><hr>
              Question 5  : <a href="#">How satisfied were you with the variety of activities and entertainment available at our resort?</a><hr>
              Question 6  : <a href="#">How satisfied were you with the location of our bed and breakfast?</a><hr>
              Question 7  : <a href="#">How satisfied were you with the food and beverage options available at our resort?</a><hr>
              Question 8  : <a href="#">How was the noise level at our hotel during your stay?</a><hr>
              Question 9  : <a href="#">How satisfied were you with the amenities provided by our resort, such as the pool, spa, and fitness center?</a><hr>
              Question 10 : <a href="#">Were there any areas where we could improve our services to make your stay more comfortable?</a><hr>
            </div>
          <script>
            
            function myFunction() {
              document.getElementById("myDropdown").classList.toggle("show");
            }
            
            // Close the dropdown if the user clicks outside of it
            window.onclick = function(event) {
              if (!event.target.matches('.dropbtn')) {
                var dropdowns = document.getElementsByClassName("dropdown-content");
                var i;
                for (i = 0; i < dropdowns.length; i++) {
                  var openDropdown = dropdowns[i];
                  if (openDropdown.classList.contains('show')) {
                    openDropdown.classList.remove('show');
                  }
                }
              }
            }
            </script>

</div>

<!-- --Pie Graphs -->

<%@ page import="java.util.*,java.sql.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@page import="java.sql.DriverManager"%>
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
String dataPoints = null;
 
try{
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/chartjs", "root", "");
	Statement statement = connection.createStatement();
	String Excellent, Good,Average,Poor,Very_poor;
	
	ResultSet resultSet = statement.executeQuery("select * from q1");
	
	while(resultSet.next()){
		Excellent = resultSet.getString("Excellent");
		Good = resultSet.getString("Good");
		Average = resultSet.getString("Average");
		Poor = resultSet.getString("Poor");
		Very_poor = resultSet.getString("Very_poor");
		map = new HashMap<Object,Object>(); map.put("label", "Excellent"); map.put("y", Excellent); list.add(map);
		map = new HashMap<Object,Object>(); map.put("label", "Good"); map.put("y", Good); list.add(map);
		map = new HashMap<Object,Object>(); map.put("label", "Average"); map.put("y", Average); list.add(map);
		map = new HashMap<Object,Object>(); map.put("label", "Poor"); map.put("y", Poor); list.add(map);
		map = new HashMap<Object,Object>(); map.put("label", "Very_poor"); map.put("y", Very_poor); list.add(map);
		
		dataPoints = gsonObj.toJson(list);
	
		 
	}
	connection.close();
}
catch(SQLException e){
	out.println("<div  style='width: 50%; margin-left: auto; margin-right: auto; margin-top: 200px;'>Could not connect to the database. Please check if you have mySQL Connector installed on the machine - if not, try installing the same.</div>");
	dataPoints = null;
}
%>
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2",
	animationEnabled: true,
	exportFileName: "New Year Resolutions",
	exportEnabled: true,
	title:{
		text: "Top Categories of New Year's Resolution"
	},
	data: [{
		type: "pie",
		showInLegend: true,
		legendText: "{label}",
		toolTipContent: "{label}: <strong>{y}%</strong>",
		indexLabel: "{label} {y}%",
		dataPoints : <%out.print(dataPoints);%>
	}]
});
 
chart.render();
 
}
</script>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>

<!----line Chart-->












</body>
</html>