<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

	title:{
		text: "",
		
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

	<div id="chartContainer" style="height: 290px; width: 450px;position:fixed;top:200px;left:260px"></div>

<script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>