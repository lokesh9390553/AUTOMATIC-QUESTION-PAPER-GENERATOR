

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
	head+="<tr bgcolor=lightslategray><th style='color:aliceblue'>Question No</th><th style='color:aliceblue'>Question</th><th <th style='color:aliceblue'>Answer</th></tr>";
	while(rs.next()) {

		String from=rs.getString("qid");
		String question=rs.getString("question");
		String answer=rs.getString("answer");

		buff+="<TR bgcolor=whitesmoke><TD align=center>"+from+"</td>";
		buff+="<td align=center>" + question +"</td>";
		buff+="<td align=center>" + answer +"</td>";

	}
	if(buff.length()>0)	out.println(head+buff+"</table>");
	else 
out.println("<link href='ksrm.cdf' rel='stylesheet'><center><p>No Messages Found</p></center>");
 }   catch(Exception e) {
   out.println("No Items Found"+e);
   }
%>





</html>
