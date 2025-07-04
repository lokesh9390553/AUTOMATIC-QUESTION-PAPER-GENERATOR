
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> 
<%@ page language="java" contentType="application/msword; charset=windows-1252" %>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<HTML>

<body>


<%  String buff="";
    String head="";
	try {


ResultSet rs=st.executeQuery("select *  from objectivequestions  where pid ='" + request.getParameter("paperid") + "'");




head+="<table align=center width=600 cellspacing=1 cellpadding=2 bgcolor=lightslategray><caption> <h4><b>Answers of Selected Paper ID..." +  request.getParameter("paperid") + "<form name=form1>";
	head+="<tr bgcolor=lightslategray><th style='color:aliceblue'>Question No</th><th style='color:aliceblue'>Question</th> <th style='color:aliceblue'>Answer</th></tr>";
	while(rs.next()) {

		String from=rs.getString("qid");
		String question=rs.getString("question");
		String answer=rs.getString("answer");

		buff+="<TR bgcolor=whitesmoke><TD align=center>"+from+"</td>";
		buff+="<td align=center>" + question +"</td>";
		buff+="<td align=center>" + answer +"</td>";

	}
	if(buff.length()>0)	out.println(head+buff+"</table><button id='btn-export' onclick='export2Word(window.docx);'></button>");
	else 
out.println("<link href='ksrm.cdf' rel='stylesheet'><center><p>No Messages Found</p></center>");
 }   catch(Exception e) {
   out.println("No Items Found"+e);
   }
%>





</html>
