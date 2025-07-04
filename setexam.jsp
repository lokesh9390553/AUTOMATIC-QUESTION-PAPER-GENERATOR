<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
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

<FORM  NAME=comfrm ACTION="setexam1.jsp">
<CENTER>
<LABEL style="BORDER-BOTTOM-COLOR: khaki; COLOR: maroon; BORDER-BOTTOM-STYLE: groove">
<FONT SIZE="2" COLOR="navy">
<B>Examination Setting </B><br>
</FONT></CENTER>

<BR><BR>
<TABLE  align =center  background="Images\bak.JPG" border=2 >
<tr>
	<TD  nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B> Exam Type :</B>
	</FONT>
	</TD>
	<TD>
		<select name="extype">
			<option value="match"> Match The following </option>
			<option value="fill"> Fill In the Blanks</option>
		</select>
	</TD>
</TR>


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

