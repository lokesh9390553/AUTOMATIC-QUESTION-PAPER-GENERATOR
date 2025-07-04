<link href="rvp.cdf" rel="stylesheet">
<%@page import="java.sql.*"%>
<%@page import="java.io.*,java.sql.* ,java.text.SimpleDateFormat,java.text.DateFormat,com.itextpdf.text.*,com.itextpdf.text.pdf.*,java.io.*,java.util.*" %>
<%@ include file="common.jsp" %>
<body>
<br><br><br><br><br><br><br><br>
<P align=left><B><FONT color=white><IMG border=0 align=center src="Images\rvp.gif" style="position:absolute;left:0;top:0;"></FONT></B></P>


<div style="position:absolute;left:820;top:200;" >
<center>
<b>Hall Ticket </b>
</center>
</hr>
</div>
<br>
<img src=Images/logo.JPG height=100 width=100 style="position:absolute;left:20;top:200;" >

<fieldset>
<center> <h3>K.S.R.M COLLEGE OF ENGINEERING <br> (AUTONOMOUS)  <br> 
(Approved by AICTE, New Delhi & Affiliated to J.N.T.U.A., Anantapuramu) <br>
KADAPA – 516 003(A.P.)
</center>
</h3>


<%

String studid= request.getParameter("apno");
String apno= request.getParameter("apno1");


session.putValue("studid",studid);



ResultSet rs2=st2.executeQuery("select * from application where apno='"+ apno +"'");

if(rs2.next())
{
%>
<fieldset>
<center>
<b>
 B.Tech., <%=rs2.getString("year")%>	 - Semester - <%=rs2.getString("semester")%> -  <%=rs2.getString("branch")%>
</center>
</fieldset>
<fieldset>
<center>
Reg.No.  <%=rs2.getString("studid").toUpperCase()%>
</fieldset>

<fieldset>
<center>
Center: KORMCE: Yerramasuaplli - Kadapa
</fieldset>
<%
}

ResultSet rs1=st1.executeQuery("select * from student where studid='"+ studid +"'");

while(rs1.next())
{
%>
<fieldset>
<table align =center  border=0 style="position:absolute;left:700;top:450;">
<td><img src=Images/<%=rs1.getString(7)%>></td>
<br>
</tr>
</table>
<table  border=0>
<tr><td class=td><b>1.Name of the Candidate              :</b></td><td>
<%=rs1.getString(2).toUpperCase()%></td></tr>


<tr><td class=td><b>2.Father Name              :</b></td><td>
<%=rs1.getString("town").toUpperCase()%>
</td></tr>


<tr><td class=td><b>3.Year of Examination :</b></td><td>
<%=rs1.getString(5)%></tr>
</table>
<center>
<%}
%>

<%
ResultSet rs3=st2.executeQuery("select * from applicationd where apno='"+ apno +"'");
%>
<br><br><br><br>
<Table border=1 align=center width=80%>
<caption> <b> Details of Subject Registered </b> </caption>
<tr>
<td><b><center>&nbsp;Subjectcode&nbsp;</b></td>
<td><b><center>&nbsp;Subject&nbsp;</b></td>

</tr>

<%
String d = null;
while(rs3.next())
{	
String subcode=rs3.getString(3);
%>
<tr>
<td><center><%=subcode%></td>
<td><center><%=rs3.getString(2)%></td>
</tr>
<%}%>

</table>
<br>
</fieldset>
Student Signature &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src=Images/sig.JPG height=100 width=100>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;


Principal Signature                       
<center>
<input type="button" value="Print this page" onClick="window.print()">
</center>
</form>

<%
/*
response.setContentType("application/pdf");   
response.setHeader("content-disposition","attachment; filename="+"monthwise.doc");

out.println("sai");
*/

%>
</body>
</html>
