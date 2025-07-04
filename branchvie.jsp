<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
 <% 
 	
ResultSet rs=st.executeQuery("select * from branch");
	%>

<body >
<br><br><br><br>
<table border="Images/bak.JPG" align=center>
<CAPTION> List of Subjects</caption>
<tr>
<tr >
<td nowrap> <b>Branch</td>
<td nowrap><b> Semester </td>
<td nowrap> <b>Subject id</td>
<td nowrap> <b>Subject Name</td>

		
</tr>
<%
	 while (rs.next())
	{%>
 <TR>
	<TD width=20><%=rs.getString(1)%></TD>
	<TD width=100><%=rs.getString(2)%></TD>
	<TD width=100><%=rs.getString(3)%></TD>
	<TD width=100><%=rs.getString(4)%></TD>
	
</TR> 

<%}%>
</TABLE></div>