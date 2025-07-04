
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<HTML>

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
Objective paper <br>
<hr>
Name of the student :____________________________________     Date:_____________________   <br>
Roll no:______________ Branch: ________ Section:_____<b Sign of Invigilator:______________ <br><hr>
Time:20mins	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Max Marks=05<br>
<hr>
	Note: Answer ALL questions. Each question caries 1/4 mark.

</center>
</h3>












<%  String buff="";
    String head="";
	try {


ResultSet rs=st.executeQuery("select *  from objectivequestions  where pid ='" + request.getParameter("paperid") + "'");




head+="<table bgcolor=white border=0 align=center width=600 cellspacing=1 cellpadding=2>";
int c = 0;
	while(rs.next()) {
	c=c+1;
		
		String from=rs.getString("qid");
		String question=rs.getString("question");
		String answer=rs.getString("answer");
		String o1=rs.getString("option1");
		String o2=rs.getString("option2");
		String o3=rs.getString("option3");
		String o4=rs.getString("option4");
		String image = rs.getString("image");



		buff+="<TR><TD align=center>["+c+"]</td>";

if(image.length()>0)
{

		buff+="<td style='white-space:nowrap;' align='center'>" + question  + " <img width=40 height=50 'vertical-align:middle' src=Images/" + image + ">" 
  +"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp" +
'[' + "&nbsp;&nbsp;&nbsp;" + "]";



}
else
{
		buff+="<td style='white-space:nowrap;'>" + question +"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;" +
'[' + "&nbsp;&nbsp;&nbsp;" + "]";



}

buff+="<tr><td colspan=3 align=left>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[a]&nbsp;" + o1	 ;
		buff+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[b]&nbsp;" + o2 ;
		buff+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[c]&nbsp;" + o3 ;
		buff+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[d]&nbsp;" + o4 +"</td></tr><tr> </tr><tr> </tr><tr> </tr>";


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
