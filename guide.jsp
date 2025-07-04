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
<CAPTION> Project Result</caption>
<tr>
<tr bgcolor=gray >
<td nowrap> Group Id</td>
<td nowrap> Project</td>
<td nowrap> Language</td>
<td nowrap> Guide</td>
<td nowrap> Project Type </td>
		
</tr>
<% int marks =0,ts=0;
	 while (rs.next())
	{ marks = rs.getInt(3);

           
%>
 <TR>
	<TD width=20><%=rs.getString(1)%></TD>
	<TD width=100><%=rs.getString(5)%></TD>
	<TD width=100><%=rs.getString(6)%></TD>
	<TD width=100><%=rs.getString(8)%></TD>

	<TD width=100>
	<%
  	if(marks >= 70)
	{%> Completed Project   		
	<%}
	else
  	if(marks >= 50){
	%> Medium Project 
	<%}
	else
  	if(marks >= 35)
	{%>Normal Project <%}%>		
</TD>

	
</TR> 

<%}%>
</TABLE></div>
<br><br><br>
