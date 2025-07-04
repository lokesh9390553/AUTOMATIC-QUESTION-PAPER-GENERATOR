<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
 <% 

String bs = session.getValue("blogin").toString();
ResultSet rs=st.executeQuery("select * from branchstudents where usid='" + bs + "'");
	%>

<body bgColor='papayawhip' >
<br><br><br><br>
<table border="Images/bak.JPG" align=center>
<CAPTION> Team Details </caption>
<tr>
<tr bgcolor=gray >
<td nowrap> Register Number</td>
<td nowrap> Student Name</td>
<td nowrap> Email</td>

		
</tr>
<% 
	 while (rs.next())
	{ 

           
%>
 <TR>
	<TD width=20><%=rs.getString(4)%></TD>
	<TD width=100><%=rs.getString(5)%></TD>
	<TD width=100><%=rs.getString(6)%></TD>

	
</TR> 

<%}%>
</TABLE></div>
<br><br><br>
