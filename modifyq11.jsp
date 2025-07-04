<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<%

String question=request.getParameter("question").toLowerCase();
	String pid=request.getParameter("pid").toLowerCase();
	String pqid=request.getParameter("pqid").toLowerCase();



String cmd="update descquestions set question ='" + question + "' where pid = " + pid + " and pqno =" + pqid ;


st1.executeUpdate(cmd);


		%>
<body ><center>
		<h3><br><br><br><br>Question Updated</h3>
		<br><br><center>
		<a href="blank.jsp" target="main"><img src=Images\home.jpg></a>		

	
	
