<link href="ksrm.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (Ksrm Knowledge System) Staff Delete Form</title>
</head>
<script language="JavaScript">

function formvalid()
{
var staffid=document.staff.staffid.value;
var name=document.staff.name.value;
var address=document.staff.address.value;
var qualification=document.staff.qualification.value;
var phone=document.staff.phone.value;
var mobile=document.staff.mobile.value;
var email=document.staff.email.value;
var tos=document.staff.tos.value;
var sex=document.staff.sex.value;
var branch=document.staff.branch.value;
var doj=document.staff.doj.value;




if((staffid.length==0) || if((name.length==0) || if((address.length==0) || if((qualification.length==0) || if((phone.length==0) || if((mobile.length==0) || if((email.length==0) || if((tos.length==0) || if((sex.length==0) || (doj.length==0)) 
{
alert('fill the form completely')
return false;
}
return true;
}

</script>

</head>
<body >

<form name=staff action=staffd3.jsp>
<center>
<font size="4" color="red">
<br><br>
<b>Employee Details</b><br>
<b>Delete</b>
</font></center>
<br>
<table  align =center  border=1>
<%
String staffid= request.getParameter("staffid");

ResultSet rs=st.executeQuery("select * from staff where staffid='"+staffid+"'");

while(rs.next())
{
%>
<table border=1 align=center>
<tr><td class=td><b>Staff Id</b></td><td>
<input name=staffid type=text size=20 value="<%=rs.getString(1)%>" ></td></tr>
<tr><td class=td><b>Name</b></td><td>
<input name=name type=text size=30 value="<%=rs.getString(2)%>" ></td></tr>
<tr><td class=td><b>Address</b></td><td>
<input name=address type=text size=30 value="<%=rs.getString(3)%>" ></td></tr>
<tr><td class=td><b>Qualification</b></td><td>
<input name=qualification type=text size=30 value="<%=rs.getString(4)%>" ></td></tr>
<tr><td class=td><b>Phone Num</b></td><td>
<input name=phone type=text size=10 value="<%=rs.getInt(5)%> " onkeypress='if(event.keyCode<48 || event.keyCode>58){staff.phone.focus(); return false;}if(.phone.value.length>10)return false;' ></td></tr>
<tr><td class=td><b>Mobile Num</b></td><td>
<input name=mobile type=text size=10 value="<%=rs.getInt(6)%> " onkeypress='if(event.keyCode<48 || event.keyCode>58){staff.mobile.focus(); return false;}if(Names.mobile.value.length>10)return false;' ></td></tr>
<tr><td class=td><b>Email Id</b></td><td>
<input name=email type=text size=20 value="<%=rs.getString(7)%>" ></td></tr>
<tr><td class=td><b>Type of Staff</b></td><td>
<input name=tos type=text size=5 value="<%=rs.getString(8)%>" ></td></tr>
<tr><td class=td><b>Sex</b></td><td>
<input name=sex type=text size=1 value="<%=rs.getString(9)%>" ></td></tr>
<tr><td class=td><b>Branch</b></td><td>
<input name=branch type=text size=10 value="<%=rs.getString(10)%>" ></td></tr>
<tr><td class=td><b>Sex</b></td><td>
<input name=doj type=text size=10 value="<%=rs.getString(11)%>" ></td></tr>



<%}%>
</table>
<center>

<input type="submit" value="Delete" class=border >
</form>
</body>
</html>
