
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<HTML>
<STYLE>A {text-decoration: none;} </STYLE>

<body>


<div style="position:absolute;left:820;top:200;" >
<center>
<b> </b>
</center>
</hr>
</div>
<br>
<img src=Images/logo.jpg height=100 width=100 style="position:absolute;left:150;top:50;" >

<fieldset>
<center> <h3>K.S.R.M COLLEGE OF ENGINEERING <br> (AUTONOMOUS)  <br> 
(Approved by AICTE, New Delhi & Affiliated to J.N.T.U.A., Anantapuramu) <br>
KADAPA – 516 003(A.P.) <br>
B. Tech IV  Semester...<b><%=request.getParameter("semester")%></b>, Mid-term Examinations <br>
Sub: <%= request.getParameter("subject")%><br>
Descriptive paper <br>
<hr>
Time:1.30mins	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Max Marks=20<br>
<hr>
	Note: Answer any four questions choosing one question from each<br>
All Questions carry equal marks
<hr>	

</center>
</h3>


<%  String buff="";
    String head="";
	try {


ResultSet rs=st.executeQuery("select *  from descquestions  where pid ='" + request.getParameter("paperid") + "'");




head+="<table bgcolor=white border=1 align=center width=600 cellspacing=1 cellpadding=2><tr><td style='white-space:nowrap;' align='center'><b>Qno </td> <td style='white-space:nowrap;' align='center'><b>Question</td><td style='white-space:nowrap;' align='center'><b>Marks </td> <td style='white-space:nowrap;' align='center'><b>CO </td> <td style='white-space:nowrap;' align='center'><b>BL </td> </tr>";

int c = 0;
int qq =1;

	while(rs.next()) {
	c=c+1;
		
		String from=rs.getString("qid");
		String pid=rs.getString("pid");
		String pqid=rs.getString("pqno");
		String question=rs.getString("question");
		String unit=rs.getString("unit");
		String marks=rs.getString("marks");
		String level=rs.getString("level");
		String image = rs.getString("image");

		rs.next();

		String from1=rs.getString("qid");
		String pqid1=rs.getString("pqno");
		String question1=rs.getString("question");
		String unit1=rs.getString("unit");
		String marks1=rs.getString("marks");
		String level1=rs.getString("level");
		String image1 = rs.getString("image");




		buff+="<TR ><TD rowspan=3 align=center>["+c+"]</td>";

if(image.length()>0)
{

		buff+="<td style='white-space:nowrap;' align='left'><a href=modifyq.jsp?pid="+ pid + "&pqid=" + pqid + "> a)" + question  + "</a> <img width=40 height=50 src=Images/" + image + ">"    ;



}
else
{
		buff+="<td style='white-space:nowrap;'><a href=modifyq.jsp?pid="+ pid + "&pqid=" + pqid + ">a)" + question +"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;";

}


buff+="<td style='white-space:nowrap;' align=center>" + marks + " <td style='white-space:nowrap;' align=center>" + unit + "<td style='white-space:nowrap;' align=center>" + level + "</td>  </tr>";

buff+="<tr rowspan=2> <td colspan=4 style='white-space:nowrap;' align=center> <B> OR </B> </td></tr>";


/* second questin */


if(image1.length()>0)
{

		buff+="<td style='white-space:nowrap;' align='left'><a href=modifyq.jsp?pid="+ pid + "&pqid=" + pqid1 + "> b)" + question1  + " <img width=40 height=50 src=Images/" + image1 + ">" 	 ;



}
else
{
		buff+="<td style='white-space:nowrap;'><a href=modifyq.jsp?pid="+ pid + "&pqid=" + pqid1 + "> b)" + question1 +"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;";

}


buff+="<td style='white-space:nowrap;' align=center>" + marks1 + " <td style='white-space:nowrap;' align=center>" + unit1 + "<td style='white-space:nowrap;' align=center>" + level1 + "</td>  </tr>";



	}
	if(buff.length()>0)	out.println(head+buff+"</table>");
	else 
out.println("<link href='ksrm.cdf' rel='stylesheet'><center><p>No Messages Found</p></center>");
 }   catch(Exception e) {
   out.println("No Items Found"+e);
   }
%>
<center>
<a href="javascript:window.print()"><img src="Images/print.jpg" height=100 width=100></a>




</html>

