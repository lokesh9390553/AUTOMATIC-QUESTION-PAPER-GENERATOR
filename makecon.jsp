<%@ page import="java.sql.*" %>
<%! 
           Connection con = null;
		    Statement st = null,st1=null,st2=null;
%>
<%
	  	Class.forName("com.mysql.jdbc.Driver");	
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","root");

st=con.createStatement();
st1=con.createStatement();
st2=con.createStatement();
%>