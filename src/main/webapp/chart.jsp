<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*"%>

<%
  Connection connection = null;
  Statement statement = null;
  ResultSet resultSet = null;

  try {
    // Connect to the MySQL database
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3306/chartjs";
    String username = "root";
    String password = "";
    connection = DriverManager.getConnection(url, username, password);

    // Execute a query to retrieve the data
    String query = "SELECT Excellent, Good, Average, Poor, Very_poor FROM q1";
    statement = connection.createStatement();
    resultSet = statement.executeQuery(query);

    List<Integer> Excellent = new ArrayList<>();
    List<Integer> Good = new ArrayList<>();
    List<Integer> Average = new ArrayList<>();
    List<Integer> Poor = new ArrayList<>();
    List<Integer> Very_poor = new ArrayList<>();

    while (resultSet.next()) {
    	Excellent.add(resultSet.getInt("Excellent"));
    	Good.add(resultSet.getInt("Good"));
    	Average.add(resultSet.getInt("Average"));
    	Poor.add(resultSet.getInt("Poor"));
    	Very_poor.add(resultSet.getInt("Very_poor"));
    	
    }

    // Pass the data to the JSP page
    request.setAttribute("Excellent", Excellent);
    request.setAttribute("Good", Good);
    request.setAttribute("Average", Average);
    request.setAttribute("Poor", Poor);
    request.setAttribute("Very_poor", Very_poor);
  } catch (Exception e) {
    e.printStackTrace();
  } finally {
    // Close the database connections
    if (resultSet != null) resultSet.close();
    if (statement != null) statement.close();
    if (connection != null) connection.close();
  }
%>


  	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

	<div style="height:320px;width:500px;border:none;position:fixed;left:240px;top:200px;background-color:#ffffff;border-radius:20px;">
	  <canvas  id="pieChart" style="position:fixed;left:330px;"></canvas>
	
	  <script>
	    // Retrieve the data from JSP variables
	    var Excellent = <%= request.getAttribute("Excellent") %>;
	    var Good = <%= request.getAttribute("Good") %>;
	    var Average = <%= request.getAttribute("Average") %>;
	    var Poor = <%= request.getAttribute("Poor") %>;
	    var Very_poor = <%= request.getAttribute("Very_poor") %>;
	
	    // Create the pie chart
	    var ctx = document.getElementById('pieChart').getContext('2d');
	    var chart = new Chart(ctx, {
	      type: 'bar',
	      data: {
	    	  labels: ['Excellent','Good','Average','Poor','Very_poor'],
	        datasets: [{
	          data: [Excellent,Good,Average,Poor,Very_poor],
	          backgroundColor: [
	            'rgba(255, 99, 132, 0.7)',
	            'rgba(54, 162, 235, 0.7)',
	            'rgba(255, 206, 86, 0.7)',
	            // Add more colors if needed
	          ]
	        
	        }]
	      }
	    });
	  </script>
	</div>
	
	 