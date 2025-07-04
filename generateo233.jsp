<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>
<HTML>
<style>
.sbar {
RIGHT: 420px; LEFT: 153px; WIDTH: 21px; POSITION: absolute; TOP: 60px; HEIGHT: 10px; BACKGROUND-COLOR: #99ccff
}
.border{
 BORDER:0; 
}
</style>
<HEAD>
<TITLE> Live Exam</TITLE>

<SCRIPT LANGUAGE="JavaScript">
<!--


function formvalid()
	{
		var qno=document.comfrm.qno.value;
		var question=document.comfrm.question.value;
		var option1=document.comfrm.option1.value;
		var option2=document.comfrm.option2.value;
		var option3=document.comfrm.option3.value;
		var option4=document.comfrm.option4.value;
		var answer=document.comfrm.answer.value;
		var image=document.comfrm.image.value;




		if ((qno.length==0)||(question.length==0)||(option1.length==0)||(option2.length==0)||(option3.length==0)||(option4.length==0)||(answer.length==0)||(image.length==0))
		{
		alert("fill the form completely")
		return false;
		}
		return true;
	}

//-->
</SCRIPT>

</HEAD>
<body >

<FORM  NAME=comfrm ACTION="generateo3331.jsp" onSubmit="return formvalid()">
<CENTER>
<LABEL style="BORDER-BOTTOM-COLOR: khaki; COLOR: maroon; BORDER-BOTTOM-STYLE: groove">
<FONT SIZE="2" COLOR="navy">
<B>Print Objective Questions Paper</B><br>

</FONT></CENTER>
<%
String subject = "";

ResultSet rs1 =st1.executeQuery("select * from branch where course ='" + request.getParameter("branch") + "' and semester ='" + request.getParameter("semester") + "'");


rs1.next();
%>
<br><br><br><br>
<table border=1 align=center>

<tr>
	<TD  nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B> Branch :</B>
	</FONT>
	</TD>
	<TD>
<select NAME="branch">
 <option> <%=rs1.getString("course")%>
</select>
	</TD>
</TR>

<tr>
	<TD  nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B> Semester :</B>
	</FONT>
	</TD>
	<TD>

<select NAME="semester">
 <option> <%=rs1.getString("semester")%>
</select>

	</TD>
</TR>


<tR>


<td> 	<FONT SIZE="3" COLOR="navy"><b>Subject </font></td>
<td><select name=subject width="180">

<% 

rs1 =st1.executeQuery("select * from branch where course ='" + request.getParameter("branch") + "' and semester ='" + request.getParameter("semester") + "'");

while(rs1.next())
	{
subject = rs1.getString(4);
%>
 <option value="<%=rs1.getString(4)%>">
<%=subject%> </option>
<%
}

%>
</select>
</td>
</tr>


<%

int a =0;
ResultSet rs=st.executeQuery("select distinct pid from objectivequestions  where branch ='" + request.getParameter("branch") + "' and semester ='" + request.getParameter("semester") + "'");

%>

<tR>


<td> 	<FONT SIZE="3" COLOR="navy"><b>Paper ID </font></td>
<td><select name=paperid width="180">
<%
while(rs.next())
	{
%>
 <option> <%=rs.getString(1)%> </option>
<%
}

%>
</select>
</td>
</tr>
</table>

<CENTER>
<INPUT TYPE="SUBMIT" value="submit" class=border >
</FORM>

</BODY>

