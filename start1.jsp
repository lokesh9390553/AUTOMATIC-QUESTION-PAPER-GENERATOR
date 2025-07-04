<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
 <% 
PreparedStatement ps=null;
int r = Integer.parseInt(request.getParameter("a"));
ResultSet rs1=st1.executeQuery("select distinct branch from matchques"); 

String uid = session.getValue("blogin").toString();
int x = 1;
%>

<body >
<br>
<center>
<font face=verdana color=blue>
<h2> OnLine Examination </h2>
</font>
</center>
<br><br><br>
<form  name=ques method=post action=start12.jsp>

<input type=hidden name=a value=<%=r%>>
<table border=0 align =center>
<tr> 
<td> Subject </td>
<td> <select name=subject>
<% while(rs1.next())
{%>
<option> <%=rs1.getString(1) %>
<%}%>
</select>
</td>
</tr>
</table>
<center>
<input type=submit value=Start>
</form>


