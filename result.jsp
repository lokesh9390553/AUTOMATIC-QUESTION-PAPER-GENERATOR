<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
 <% 

String bs = session.getValue("blogin").toString();
ResultSet rs=st.executeQuery("select * from marks where usid='" + bs + "'");
	%>

<body >
<br><br><br><br>
<table border="Images/bak.JPG" align=center>
<CAPTION> Exam Result</caption>
<tr>
<tr bgcolor=gray >
<td nowrap> Group Id</td>
<td nowrap> Subject</td>
<td nowrap> Marks Percentage</td>
<td nowrap> Correct Questions Answered</td>
<td nowrap> Result </td>
<td nowrap> Level </td>
		
</tr>
<% int marks =0,ts=0;
	 while (rs.next())
	{ marks = rs.getInt(3);
	ts = rs.getInt(4);

           
%>
 <TR>
	<TD width=20><%=rs.getString(1)%></TD>
	<TD width=100><%=rs.getString(2)%></TD>
	<TD width=100><%=marks%></TD>
	<TD width=100><%=(marks * ts)/100%></TD>
	<TD width=100>
	<%
  	if(marks >= 70)
	{%> First   		
	<%}
	else
  	if(marks >= 50){
	%> Second
	<%}
	else
  	if(marks >= 35)
	{%>Thrid <%}
	else
{%>		
	fail
<%}%>
</TD>
	<TD width=100><%=rs.getString(6)%></TD>
	
</TR> 

<%}%>
</TABLE></div>
<br><br><br>
