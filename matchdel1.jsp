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
<body >

<FORM  NAME=comfrm ACTION="matchdel2.jsp"  onSubmit="return formvalid()">

<%
String qno=request.getParameter("qno");
ResultSet rs=st.executeQuery("select * from matchques  where qno='" + qno + "' and branch='" + request.getParameter("branch") + "' and image='" + request.getParameter("image") + "'");

while(rs.next())
{

%>

<CENTER>
<LABEL style="BORDER-BOTTOM-COLOR: khaki; COLOR: maroon; BORDER-BOTTOM-STYLE: groove">
<FONT SIZE="2" COLOR="navy">
<B>Match the Following Questins Deletion</B><br>
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

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Subject :</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="subject" DISABLED class=border value=<%=rs.getString(2)%>>
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
	<B>Option 1:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="option1" DISABLED class=border value=<%=rs.getString(4)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Option 2:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="option2" DISABLED class=border value=<%=rs.getString(5)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Option 3:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="option3" DISABLED class=border value=<%=rs.getString(6)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Option 4:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="option4" DISABLED class=border value=<%=rs.getString(7)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Answer:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="answer" DISABLED class=border value=<%=rs.getString(8)%>>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Image File Name:</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="image" DISABLED class=border value=<%=rs.getString(9)%>>
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

