<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
 <% 
 	
ResultSet rs=st.executeQuery("select * from matchdesc");
	%>

<body >
<br><br><br><br>
<table border="Images/bak.JPG" align=center>
<CAPTION> List of Questions</caption>
<tr>
<tr bgcolor=gray >
<td nowrap> Question id</td>
<td nowrap>Subject</td>
<td nowrap> Question</td>
<td nowrap> CO</td>
<td nowrap> PO</td>
		
</tr>
<%
	 while (rs.next())
	{%>
 <TR>
	<TD width=100><%=rs.getInt(1)%></TD>
	<TD width=100><%=rs.getString(4)%></TD>
	<TD width=100><%=rs.getString(5)%></TD>
	<TD width=100><%=rs.getString(14)%></TD>
	<TD width=100><%=rs.getString(12)%></TD>


	
</TR> 

<%}%>
</TABLE></div>