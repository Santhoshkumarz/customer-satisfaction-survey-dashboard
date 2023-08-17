<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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


try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chartjs", "root", "");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into feedbacks(Excellent,Good,Average,Poor,Very_poor,otherFeedbacks,email) values('"+q1+"','"+q2+"','"+q3+"','"+q4+"','"+q5+"','"+q6+"','"+q7+"','"+q8+"','"+q9+"','"+q10+"','"+otherFeedbacks+"','"+email+"')");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>

</body>
</html>