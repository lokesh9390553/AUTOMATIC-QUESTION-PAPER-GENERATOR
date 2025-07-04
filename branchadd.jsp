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
<TITLE> Subject Entry Section </TITLE>

<SCRIPT LANGUAGE="JavaScript">
<!--


function formvalid()
	{
		var branchid =document.comfrm.branchid.value;
		var name=document.comfrm.name.value;


		if ((branchid.length==0)||(name.length==0))
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

<FORM  NAME=comfrm ACTION="branchadd1.jsp" onSubmit="return formvalid()">
<CENTER>
<LABEL style="BORDER-BOTTOM-COLOR: khaki; COLOR: maroon; BORDER-BOTTOM-STYLE: groove">
<FONT SIZE="2" COLOR="navy">
<B>Subject Entry</B><br>
<b> Adding New Subjects</b>
</FONT></CENTER>

<BR><BR>
<TABLE  align =center  border=2 >
<tr>
	<TD  nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B> Branch :</B>
	</FONT>
	</TD>
	<TD>
<select NAME="branch">
 <option> CSE 
 <option> EEE 
 <option> CIV 
 <option> MEC
 <option> ECE
 <option> IT  
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
 <option> 1
 <option> 2 
 <option> 3 
 <option> 4
 <option> 5
 <option> 6  
 <option> 7
 <option> 8
</select>

	</TD>
</TR>


<tr>
	<TD  nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B> Subject Id :</B>
	</FONT>
	</TD>
	<TD>
<INPUT TYPE="text" NAME="branchid"  class=border>
	</TD>
</TR>
<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Subject Name :</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="name"  class=border>
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


