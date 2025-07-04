<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
 <% 


ResultSet rs=st.executeQuery("select * from marks");
	%>

<body >
<br><br><br><br>
<table border="Images/bak.JPG" align=center>
<CAPTION> Exam Result</caption>
<tr>
<tr bgcolor=gray >
<td nowrap> Group Id</td>
<td nowrap> Subject</td>
<td nowrap> Marks</td>
<td nowrap> Result </td>
		
</tr>
<% int marks =0,ts=0;
	 while (rs.next())
	{ marks = rs.getInt(3);

           
%>
 <TR>
	<TD width=20><%=rs.getString(1)%></TD>
	<TD width=100><%=rs.getString(2)%></TD>
	<TD width=100><%=marks%></TD>
	<TD width=100>
	<%
  	if(marks >= 70)
	{%> First   		
	<%}
	else
  	if(marks >= 50){
	%> SEcond
	<%}
	else
  	if(marks >= 35)
	{%>thrid<%}
else{%>		
	fail
<%}%>
</TD>

	
</TR> 

<%}%>
</TABLE></div>
<br><br><br>
