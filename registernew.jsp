<html>
<head>
<title>Welcome</title>
<script>
function formvalid()
	{
		var staffid =document.comfrm.uid.value;
		var name=document.comfrm.pwd.value;


		if ((staffid.length==0)||(name.length==0))
		{
		alert("fill the form completely")
		return false;
		}
		return true;
	}
</script>
</head>

<body bgColor='papayawhip' >
<img src="Images\sai.jpg" width="100%">

<FORM  NAME=comfrm ACTION="login1.jsp" onSubmit="return formvalid()">
<font color="blue" size="5">
<center>


<table border=2>
<tr>
<td> User Id </td>
<td> <input type=text name=uid border=0></td>
</tr>

<tr>
<td> Password </td>
<td> <input type=password name=pwd border=0></td>
</tr>
</table>
<center> <input type=submit value=submit></center>
<br>
<center>
<FONT color=white>&nbsp;</FONT><IMG border=0 height=14 
      src="new100.gif" width=23><B><FONT size=2 color="white"><A 
      href="register.jsp">Group Click Here</A></FONT>
<center>
<br>
<img src="Images\e1.jpg" width=150 height=150>
</body>
</form>













