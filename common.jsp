<%@ page import="java.sql.*" %>
<%! 
           Connection con = null;
		    Statement st = null,st1=null,st2=null,st3=null;
%>
<%
	  	Class.forName("com.mysql.jdbc.Driver");	
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");

st=con.createStatement();
st1=con.createStatement();
st2=con.createStatement();
st3=con.createStatement();
%>