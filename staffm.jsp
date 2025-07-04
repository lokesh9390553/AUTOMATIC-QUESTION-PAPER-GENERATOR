<link href="ksrm.cdf" rel="stylesheet">
<html>
<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<%
ResultSet rs=st.executeQuery("select * from staff");
%>
<body >
<center>
<font color=red>
<p align="center"><b>
Modification of Employee</b></p>
</center>
</font>

<form name=staff method=post  action=staffm2.jsp>
<table align=center border=1>
<tr> 
<td width="44%"> 
<div align='right'><font color='red'>Employee Id</font></div>
</td>
<td width="56%"> 
<select name="staffid">
<%while(rs.next()){
String stafid=rs.getString(1);
session.putValue("stafid",stafid);
%>
<option><%=stafid%></option>
<%}%>
</select>
</td>
</tr>
<tr>
<td width="44%">&nbsp;</td>
<td width="56%">
<input type="submit" name="Submit" value="Submit">
</td>
</tr>
</table>
</form>
</body>
</html>
