<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
 <% 
 	
ResultSet rs=st.executeQuery("select * from matchques");
	%>

<body >
<br><br><br><br>
<table border="Images/bak.JPG" align=center>
<CAPTION> List of Match the Following Questions</caption>
<tr>
<tr bgcolor=gray >
<td nowrap> Question id</td>
<td nowrap>Subject</td>
<td nowrap> Question</td>
<td nowrap> Option 1</td>
<td nowrap> Option 2</td>
<td nowrap> Option 3</td>
<td nowrap> Option 4</td>
<td nowrap> Answer</td>
<td nowrap> Level</td>
		
</tr>
<%
	 while (rs.next())
	{%>
 <TR>
	<TD width=100><%=rs.getInt(1)%></TD>
	<TD width=100><%=rs.getString(4)%></TD>
	<TD width=100><%=rs.getString(5)%></TD>
	<TD width=100><%=rs.getString(6)%></TD>
	<TD width=100><%=rs.getString(7)%></TD>
	<TD width=100><%=rs.getString(8)%></TD>
	<TD width=100><%=rs.getString(9)%></TD>
	<TD width=100><%=rs.getString(10)%></TD>
	<TD width=100><%=rs.getString(14)%></TD>


	
</TR> 

<%}%>
</TABLE></div>