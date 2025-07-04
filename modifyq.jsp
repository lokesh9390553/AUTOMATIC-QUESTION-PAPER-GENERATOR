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

<FORM  NAME=comfrm ACTION="modifyq11.jsp" onSubmit="return formvalid()">
<CENTER>
<LABEL style="BORDER-BOTTOM-COLOR: khaki; COLOR: maroon; BORDER-BOTTOM-STYLE: groove">
<FONT SIZE="2" COLOR="navy">
<B>Add Descriptive Questions </B><br>
<b> Adding New Questions</b>
</FONT></CENTER>
<input type=hidden name =pid value=<%=request.getParameter("pid")%>>
<input type=hidden name =pqid value=<%=request.getParameter("pqid")%>>

<%

ResultSet rs1 =st1.executeQuery("select * from descquestions where pid=" + request.getParameter("pid") + " and pqno = " + request.getParameter("pqid"));


%>
<% if(rs1.next())
	{
%>

<BR><BR>
<TABLE  align =center  background="Images\bak.JPG" border=2 >



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

 <option><%=rs1.getString("subject")%> </option>

</select>
</td>
</tr>

<%}%>


<tR>


<td> 	<FONT SIZE="3" COLOR="navy"><b>Unit Number</font></td>
<td><select name=unitid width="180">

 <option><%=rs1.getString("unit")%>;

</select>
</td>
</tr>

<td> 	<FONT SIZE="3" COLOR="navy"><b>Level </font></td>
<td><select name=leve width="180">

 <option>1
 <option>2
 <option>3
 <option>4
 <option>5
 <option>6
</select>
</td>
</tr>


<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Marks :</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="marks"  class=border value=<%=rs1.getString("marks")%>>
	</TD>
</TR>


<tR>


<td> 	<FONT SIZE="3" COLOR="navy"><b>Priority</font></td>
<td><select name=pri width="180">

 <option>easy
 <option>medium
 <option>hard
</select>
</td>
</tr>




<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Question :</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="question"  value="<%=rs1.getString("question")%>"	 class=border>
	</TD>
</TR>





<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Image:</B></FONT></TD>
	<TD>
	<INPUT TYPE="file" NAME="image"  class=border>
	</TD>
</TR>



</TABLE>
</TD>
</TR>
</TABLE>
<CENTER>
<INPUT TYPE="SUBMIT" value="Save" class=border >
</FORM>

<TABLE border=0>

</TABLE>
</CENTER>
</BODY>

