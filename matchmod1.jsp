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

<HEAD>
<TITLE> Questions Update Section </TITLE>


</HEAD>
<body >

<FORM  NAME=comfrm ACTION="matchmod3.jsp"  onSubmit="return formvalid()">

<%
String qno=request.getParameter("qno");
ResultSet rs=st.executeQuery("select * from matchques  where qno='" + qno + "' and branch='" + request.getParameter("branch") + "' and image='" + request.getParameter("image") + "'");

while(rs.next())
{

%>

<CENTER>
<LABEL style="BORDER-BOTTOM-COLOR: khaki; COLOR: maroon; BORDER-BOTTOM-STYLE: groove">
<FONT SIZE="2" COLOR="navy">
<B>Match the Following Questins Updation</B><br>
<b> Updation of Questions</b>
</FONT></CENTER>
<BR><BR>

<TABLE  align =center  background="Images\bak.JPG" border=2 >
<tr>
	<TD  nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B> Question No :</B>
	</FONT>
	</TD>
	<TD>
<INPUT TYPE="text" NAME="qno"  class=border value=<%=rs.getInt(1)%>>
	</TD>
</TR>
<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Subject :</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="subject"  class=border value=<%=rs.getString(2)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Question :</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="question"  class=border value=<%=rs.getString(3)%>>
	</TD>
</TR>


<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Option 1:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="option1"  class=border value=<%=rs.getString(4)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Option 2:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="option2"  class=border value=<%=rs.getString(5)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Option 3:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="option3"  class=border value=<%=rs.getString(6)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Option 4:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="option4"  class=border value=<%=rs.getString(7)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Answer:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="answer"  class=border value=<%=rs.getString(8)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Level :</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="image"  class=border value=<%=rs.getString(9)%>>
	</TD>
</TR>

</TABLE>
</TD>
</TR>
</TABLE>




<CENTER>

<INPUT TYPE="SUBMIT" value="Update" class=border >
<%}%>
</FORM>

<TABLE border=0>

</TABLE>
</CENTER>
</BODY>

