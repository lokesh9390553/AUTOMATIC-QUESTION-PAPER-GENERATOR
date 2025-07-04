<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<html>
<body >

<%
ResultSet rs=st.executeQuery("select * from matchdesc");
%> 
<br><br><br><br><br>
<center>
<p align="center"><b>Deletion of Questions</b></p>
</center>

<form name="form1" method="post" action="filldel11.jsp">
  <table width="43%" border="1" align="center">

<%

ResultSet rs1 =st1.executeQuery("select * from branch");

%>

<tR>
<td> 	<FONT SIZE="3" COLOR="navy"><b>Subject </font></td>
<td><select name=branch width="180">
<% while(rs1.next())
	{
%>
 <option value="<%=rs1.getString(4)%>">
<%=rs1.getString(4)%> </option>
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
