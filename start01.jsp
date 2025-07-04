<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
 <% 
PreparedStatement ps=null;
int r = Integer.parseInt(request.getParameter("a"));
int t  =0;
int m = 0;
String uid = session.getValue("blogin").toString();
int x = 1;
int xx = 0;


ResultSet rs2=st2.executeQuery("select level  from marks where usid = '" + uid + "' and level in (select max(level)  from marks where usid ='" + uid + "')"); 
if(rs2.next())
  t = rs2.getInt(1);
else
 t = 0;

int l = 0;

if(t>0)
{
ResultSet rs3=st.executeQuery("select marks from marks where usid = '" + uid + "' and level in (select max(level)  from marks where usid ='" + uid + "')"); 
if(rs3.next())
  m = rs3.getInt(1);


ResultSet rs4=st2.executeQuery("select max(image)  from matchques where branch = '" + request.getParameter("subject") + "'");
if(rs4.next())
  l = rs4.getInt(1);

}
l = l+1;






%>

<body >
<br>
<center>
<font face=verdana color=blue>
<h2> OnLine Examination </h2>
</font>
</center>
<br><br><br>
<form  name=ques method=post action=start2.jsp>
<input type=hidden name=r value=10>
<input type=hidden name=start value=0>
<input type=hidden name=stop value=0>
<input type=hidden name=a value=1>
<table border=0 align =center>

<tr> 
<td> Subject </td>
<td> <select name=subject>
<option> <%=request.getParameter("subject") %>
</option>
</select>
</td>
</tr>

<tr> 
<td>Level  </td>

<%
if(t==0)
{
%>
<td>
<select name =level> 
<option> 1 </option>
</select>
</td>
<%
}
else
{

ResultSet rs1=st1.executeQuery("select distinct image from matchques where image <=" + t); 
int level=0;
%>

<td>
<select name =level> 
<% while(rs1.next())
{
level=rs1.getInt(1);
%>
<option>  <%=level %> </option>
<%}

if(m>=90)
{

for(int y=level+1;y<=l;y++)
{
%>
<option>  <%=y %> </option>
<%
}
}
else
if(m >=70)
{

for(int y=level+1;y<=l-2;y++)
{
%>
<option>  <%=y %> </option>
<%
}
}
else
if(m >=50)
{

for(int y=level+1;y<=l-4;y++)
{
%>
<option>  <%=y %> </option>
<%
}
}
else
if(m >=45)
{

for(int y=level+1;y<=l-6;y++)
{
%>
<option>  <%=y %> </option>
<%
}
}
else
{
%>
<option>  <%=level+1 %> </option>
<%}%>



%>




</select>
</td>
<%}%>
</tr>

</table>
<center>
<input type=submit value=Start>
</form>


