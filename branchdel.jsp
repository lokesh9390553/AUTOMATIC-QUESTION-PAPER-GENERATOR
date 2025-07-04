<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<html>
<body >

<%
ResultSet rs=st.executeQuery("select * from Branch");
%> 
<br><br><br><br><br>
<center>
<p align="center"><b>Deletion of subject</b></p>
</center>

<form name="form1" method="post" action="branchdel2.jsp">
  <table width="43%" border="1" align="center">
    <tr> 
      <td width="44%"> 
        <div align="right"><font color="#0000FF">Branch Id : </font></div>
      </td>
      <td width="56%"> 
        <select name="branchid">
		<%while(rs.next()){%>
		<option><%=rs.getString(3)%></option>
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
