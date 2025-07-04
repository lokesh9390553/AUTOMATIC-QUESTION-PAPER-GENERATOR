<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
 <% 
PreparedStatement ps=null;
int r = Integer.parseInt(request.getParameter("a"));
st2.executeUpdate("delete from marks where marks = 0 and tquestion  =0");
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
<form  name=ques method=post action=start01.jsp>
<input type=hidden name=r value=10>
<input type=hidden name=start value=0>
<input type=hidden name=stop value=0>
<input type=hidden name=a value=1>
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


