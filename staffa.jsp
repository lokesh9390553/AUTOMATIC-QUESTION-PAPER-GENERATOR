<%@ include file="common.jsp" %>
<link href="ksrm.cdf" rel="stylesheet">
<%@ page import="java.sql.*" %>
<html>


<script language="JavaScript">

	var lshown =  '' ;
	var IE = (document.all != null) ;

	function GetDate(date)
	{
		switchLayer('popCal') ;
		document.staff.sel_date.value = date ;
	}

	function SetDate()
	{
        var f = document.staff;
		var newDate = f.sel_date.value ;
		if( newDate != "" )
		{
   		    var a ;
   		    if( IE ) 
				a = document.applets[0] ;
   		    else
   		    {
   		     	a = document.layers['popCal'].document.applets[0] ;

   		    }
			a.setDate( newDate ) ;
			
		}
		switchLayer('popCal') ;
	}

	function showLayer( lname )
	{
        var lLay ;

        if( IE ) 
        {
        	lLay = document.all[lname] ;
            lLay.style.visibility = "visible" ;
        } 
        else 
        {
            lLay = document.layers[lname] ;
            lLay.visibility = "show" ;
        }
        return;
	}

	function moveLayer( lname, x, y )
	{
        var lLay ;
   
        if( IE ) 
        {
        	lLay = document.all[lname] ;
            lLay.style.pixelLeft = x ;
            lLay.style.pixelTop = y ;
        } 
        else 
        {
            lLay = document.layers[lname] ;
            lLay.left = x ;
            lLay.top = y ;
        }                
        return;
	}

	function  hideLayer( l_name )
	{
        var lLay ;

        if( IE ) 
        {
            lLay = document.all[l_name] ;
            lLay.style.visibility = "hidden" ;
        }
        else 
        {
            lLay = document.layers[l_name] ;
            lLay.visibility = "hide" ;
        }
	}

	function switchLayer(lname)
	{
        if( lshown == '' )
        {
            showLayer( lname ) ;
            lshown = lname ;
        }
        else
        {
            hideLayer( lshown ) ;
            if( lshown == lname )  
            {
                lshown = '' ; 
            }
            else
            {
                lshown = lname ;
                showLayer( lname ) ; 
            }
        }
	}


function formvalid()
{
var staffid=document.staff.staffid.value;
var name=document.staff.name.value;
var address=document.staff.address.value;
var qualification=document.staff.qualification.value;
var phone=document.staff.phone.value;
var mobile=document.staff.mobile.value;
var email=document.staff.email.value;


if((staffid.length==0)||(name.length==0) || (address.length==0) || (qualification.length==0) || (phone.length==0) || (mobile.length==0) || (email.length==0)   ) 
{
alert('fill the form completely')
return false;
}
return true;
}

</script>

</head>
<body >

<form name=staff action=staffins.jsp  onSubmit='return formvalid()'>
<center>
<font size="4" color="red">
<b>Employee Details</b><br>
<b>New Entry</b>
</font></center>
<br>
<table  align =center  border=1>
<tr><td class=td><b>Employee Id</b></td><td>
<input name=staffid type=text  size=30  ></td></tr>
<tr><td class=td><b>Name</b></td><td>
<input name=name type=text  size=30  ></td></tr>
<tr><td class=td><b>Address</b></td><td>
<input name=address type=text  size=30  ></td></tr>
<tr><td class=td><b>Designation</b></td><td>
<input name=qualification type=text  size=30  ></td></tr>
<tr><td class=td><b>Phone Num</b></td><td>
<input name=phone type=text  size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){staff.phone.focus(); return false;}if(staff.phone.value.length>10)return false;'></td></tr>
<tr><td class=td><b>Mobile Num</b></td><td>
<input name=mobile type=text  size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){staff.mobile.focus(); return false;}if(staff.mobile.value.length>10)return false;'></td></tr>
<tr><td class=td><b>Email Id</b></td><td>
<input name=email type=text  size=20  ></td></tr>

<tr><td class=td><b>Type of Staff</b></td><td>

<select name=tos   >
<option> Principal </option>
<option> Hod  </option>
<option> Professor </option>
<option> Lecturer </option>
<option> Staff </option>
<option> Department Staff</option>
</select>

</td></tr>

<tr><td class=td><b>Sex</b></td><td>

<Select name=sex  >
<option value=m> Male </option>
<option value=f> Female </option>
</select>
</td></tr>

<tr><td class=td><b>Branch</b></td><td>


<Select name=branch  >
<option> MCA </option>
<option> MBA</option>
</select>

<tr><td class=td><b>Date of Registrtion</b></td><td>
<input name=sel_date type=text  size=10>
<input type="button" OnClick="SetDate();" value="Calendar">

<div id="popCal" style="position:absolute; width:140px; height:140px; left: 310px; top: 315px;  visibility: hidden">
<applet 
	name="calendar_applet"
	mayscript 
	code="com.scand.jcalendar.JCalendar.class"
	archive="jcalendar.jar" 
	width="160" height="160">
	  <param name="JSCRIPT" value="GetDate">
  <PARAM NAME="FORMATSTR" VALUE ="dd/MMM/yy">
 </applet>
</div>


</table>
<center>
<input type="submit" value="Save" class=border >
</form>
</body>
</html>
