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
<TITLE> Students Entry Section </TITLE>

<SCRIPT LANGUAGE="JavaScript">
<!--



function formvalid()
	{
		var sturegno =document.comfrm.sturegno.value;
		var name=document.comfrm.name.value;
		var password=document.comfrm.password.value;
		var address=document.comfrm.address.value;
		var phone=document.comfrm.phone.value;
		var sex=document.comfrm.sex.value;
		var branch=document.comfrm.branch.value;
		var year=document.comfrm.year.value;



		if ((year.length==0)||(sturegno.length==0)||(name.length==0)||(address.length==0)||(phone.length==0)||(sex.length==0)||(branch.length==0)||(password.length==0))
		{
		alert("fill the form completely")
		return false;
		}
		return true;
	}

//-->
</SCRIPT>

</HEAD>
<BODY background="pics/ba1.gif">


<FORM  NAME=comfrm ACTION="studentsnew.jsp" onSubmit="return formvalid()">
<CENTER>


<table border="1" cellspacing="1" width="100%" height="1">
  <tr>
    <td width="100%" height="20" colspan="3">
    <img border="0" src="pics/yellow.gif" width="100%" height="18"></td>
  </tr>
  <tr>
    <td width="100%" height="1" colspan="3">
    <p align="center">
    <img border="0" src="pics/hleft.jpg" width="125" height="28" align="left" hspace="0"><font size="5">
    <img border="0" src="pics/hright.jpg" width="125" height="28" align="right" hspace="0"></font>
    <font color="#CC6600" style="font-size: 18pt">Registration Page</font></td>
  </tr>
  <tr>
    <td width="100%" height="17" colspan="3">
    <img border="0" src="pics/yellow1.gif" width="100%" height="18"></td>
  </tr>
  <tr>
    <td width="100%" height="17" colspan="3">
    <p align="center">
    <img border="0" src="pics/bar.gif" width="100%" height="16"></td>
  </tr>
  <tr>
    <td width="3%" height="40" style="border-right-style: none; border-right-width: medium">
    <img border="0" src="pics/tlglobe.GIF" width="100" height="100"><p>
    <img border="0" src="pics/lglobe.GIF" width="100" height="100"></td>
    <td width="93%" height="40" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium">

<TABLE  align =center  background="Images\bak.JPG" border=2 >
<caption> <B>Registration Form</B> </caption>
<tr>
	<TD  nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B> Login  Id :</B>
	</FONT>
	</TD>
	<TD>
<INPUT TYPE="text" NAME="sturegno"  class=border>
	</TD>
</TR>
<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Name :</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="name"  class=border>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Password :</B></FONT></TD>
	<TD>
	<INPUT TYPE="password" NAME="password"  class=border>
	</TD>
</TR>

<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Address :</B></FONT></TD>
	<TD>
	<INPUT TYPE="text" NAME="address"  class=border>
	</TD>
</TR>


<TR>
	<TD nowrap>
	<FONT SIZE="3" COLOR="navy">
	<B>Phone :</B></FONT>
	</TD>
	<TD><INPUT TYPE="text" NAME="phone"  class=border  onkeypress="if(event.keyCode<48 || event.keyCode>58){comfrm.phone.focus(); return false;}if(comfrm.phone.value.length>11)return false;">
	</TD>
</TR>

<TD>
	<FONT SIZE="3" COLOR="navy">
	<B>Sex :</B>
	</FONT>
</TD>
	<TD><select name=sex  class=border>
	   <option value="m"> Male </option>
	   <option value-"f"> Female </option>
	</select>	
</TD>
</TR>

<TD>
	<FONT SIZE="3" COLOR="navy">
	<B>Branch :</B>
	</FONT>
</TD>
	<TD><select name=branch  class=border>
	   <option value="mtech"> MTECH </option>
	   <option value="btech"> BTECH </option>
	   <option value="msc"> MSC </option>
	   <option value="ma"> MA </option>

	</select>	
</TD>
</TR>


<TR>
	<TD><FONT SIZE="3" COLOR="navy">
	<B> Year :</B>
	</FONT>
	</TD>
	<TD><INPUT TYPE="text" NAME="year"  class=border onkeypress="if(event.keyCode<48 || event.keyCode>58){comfrm.year.focus(); return false;}if(comfrm.year.value.length>11)return false;">
	</TD>
	<td><FONT SIZE="3" COLOR="navy"><B></B></FONT></td><TD></TD>
</TR>

</TR>
</TABLE>
<center>
<INPUT TYPE="SUBMIT" value="Save" class=border >
</center>

</FORM>

    <td width="3%" height="40" style="border-left-style: none; border-left-width: medium">
    <img border="0" src="pics/trglobe.GIF" width="100" height="100"><p>
    <img border="0" src="pics/rglobe.GIF" width="100" height="100"></td>
  </tr>
  <tr>
    <td width="99%" height="20" colspan="3">
    <img border="0" src="pics/bar.gif" width="100%" height="16"></td>
  </tr>
  </table>

</body>








<img style="position:absolute;top:140;left:540;" border="0" src="pics/HAND12.JPG" width="180" height="188"></td>


<TABLE border=0>
<center> <a href="welcome.jsp"> Home Page </a> </center>
</TABLE>
</CENTER>
</BODY>

