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
		var answer=document.comfrm.answer.value;
		var image=document.comfrm.image.value;




		if ((qno.length==0)||(question.length==0)||(answer.length==0)||(image.length==0))
		{
		alert("fill the form completely")
		return false;
		}
		return true;
	}


//-->
</SCRIPT>

<HEAD>



</HEAD>
<body >

<FORM  NAME=comfrm ACTION="fillup3.jsp"  onSubmit="return formvalid()">

<%
String qno=request.getParameter("qno");
ResultSet rs=st.executeQuery("select * from fillques  where qno='" + qno + "'");

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
	<INPUT TYPE="text" NAME="branch"  class=border value=<%=rs.getString(2)%>>
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
	<B>Answer:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="answer"  class=border value=<%=rs.getString(4)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Image File Name:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="image"  class=border value=<%=rs.getString(5)%>>
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

