<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<html>
<body >

<%
ResultSet rs=st.executeQuery("select * from matchques");
%> 
<br><br><br><br><br>
<center>
<p align="center"><b>Updation  of Match the Following Questions</b></p>
</center>

<form name="form1" method="post" action="matchmod1.jsp">
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
 <option value=<%=rs1.getString(1)%>>
<%=rs1.getString(2)%> </option>
<%}%>
</select>
</td>
</tr>






    <tr> 
      <td width="44%"> 
 	<FONT SIZE="3" COLOR="navy"><b>Question Id </font>
      </td>
      <td width="56%"> 
        <select name="qno">
		<%while(rs.next()){%>
		<option><%=rs.getInt(1)%></option>
		<%}%>
        </select>
      </td>
    </tr>
<tR>
<td> 	<FONT SIZE="3" COLOR="navy"><b>Level</font></td>
<td><select name=image  width="180">
 <option> 1 </option>
 <option> 2 </option>
 <option> 3 </option>
 <option> 4 </option>
 <option> 5 </option>
 <option> 6 </option>
 <option> 7</option>
 <option> 8 </option>
 <option> 9 </option>
 <option> 10 </option>
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
