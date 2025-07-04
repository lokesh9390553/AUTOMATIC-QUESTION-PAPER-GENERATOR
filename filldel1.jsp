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


</HEAD>
<TITLE> On Line Exams</TITLE>
<body >

<FORM  NAME=comfrm ACTION="filldel2.jsp">

<%
String qno=request.getParameter("qno");
ResultSet rs=st.executeQuery("select * from fillques  where qno='" + qno + "'");

while(rs.next())
{

%>

<CENTER>
<LABEL style="BORDER-BOTTOM-COLOR: khaki; COLOR: maroon; BORDER-BOTTOM-STYLE: groove">
<FONT SIZE="2" COLOR="navy">
<B>Fill in the Blanks Questins Deletion</B><br>
<b> Deletion of Questions</b>
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
<INPUT TYPE="text" NAME="qno" class=border value=<%=rs.getInt(1)%>>
	</TD>
</TR>


<tr>
	<TD  nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B> Subject :</B>
	</FONT>
	</TD>
	<TD>
<INPUT TYPE="text" NAME="ss" class=border value=<%=rs.getString(2)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Question :</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="question" DISABLED class=border value=<%=rs.getString(3)%>>
	</TD>
</TR>



<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Answer:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="answer" DISABLED class=border value=<%=rs.getString(4)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Image File Name:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="image" DISABLED class=border value=<%=rs.getString(5)%>>
	</TD>
</TR>

</TABLE>
</TD>
</TR>
</TABLE>




<CENTER>
<INPUT TYPE="SUBMIT" value="Delete" class=border >
<%}%>
</FORM>

<TABLE border=0>

</TABLE>
</CENTER>
</BODY>

