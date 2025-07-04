<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<html>
<body >

<%
ResultSet rs=st.executeQuery("select * from fillques");
%> 
<br><br><br><br><br>
<center>
<p align="center"><b>Updation  of Fill In the FollowingQuestions</b></p>
</center>

<form name="form1" method="post" action="fillupd1.jsp">
  <table width="43%" border="1" align="center">
    <tr> 
      <td width="44%"> 
        <div align="right"><font color="#0000FF">Question Id : </font></div>
      </td>
      <td width="56%"> 
        <select name="qno">
		<%while(rs.next()){%>
		<option><%=rs.getInt(1)%></option>
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
