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

<FORM  NAME=comfrm ACTION="fillnew1.jsp" onSubmit="return formvalid()">
<CENTER>
<LABEL style="BORDER-BOTTOM-COLOR: khaki; COLOR: maroon; BORDER-BOTTOM-STYLE: groove">
<FONT SIZE="2" COLOR="navy">
<B>Add Descriptive Questions </B><br>
<b> Adding New Questions</b>
</FONT></CENTER>
<%

ResultSet rs1 =st1.executeQuery("select * from branch");

%>
<br><br><br><br>
<table border=1 align=center>
<tR>


<td> 	<FONT SIZE="3" COLOR="navy"><b>Subject </font></td>
<td><select name=branch width="180">
<% while(rs1.next())
	{
%>
 <option value="<%=rs1.getString(3)%>">
<%=rs1.getString(4)%> </option>
<%}%>
</select>
</td>
</tr>




</TABLE>
</TD>
</TR>
</TABLE>
<CENTER>
<INPUT TYPE="SUBMIT" value="submit" class=border >
</FORM>

<TABLE border=0>

</TABLE>
</CENTER>
</BODY>

