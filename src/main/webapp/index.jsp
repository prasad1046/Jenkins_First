<html>
<head>
<title>Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="E0E0E0" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" background="../../images/strip.gif">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="13%" rowspan="2"><img src="../../images/logo.gif" width="130" height="83"></td>
    <td width="12%" bgcolor="6070B0" align="center"><font face="Arial" size="3"><b><font size="2" color="#FFFFFF">&nbsp;&nbsp;&nbsp;<%=session.getAttribute("xUserId")%></font></b></font></td>
        <td width="88%" bgcolor="6070B0" align="center"><font size="3" color="#FFFFFF" face="Verdana, Arial, Helvetica, sans-serif"><b>Government
          Business Module</b></font></td>
<!-- code added and  commented by vaidyanathan to print the soldate instead of system date
<td width="16%" bgcolor="6070B0" align="center"><font color="#FFFFFF" size="2"><b><font face="Arial"><%=gbmgc.getSystemDate(vErrorObjects)%></font></b></font></td>
-->
    <td width="16%" bgcolor="6070B0" align="center"><font color="#FFFFFF" size="2"><b><font face="Arial"><%=gbmgc.getSolDate(sSolId,vErrorObjects)%></font></b></font></td>
  </tr>
  <tr>
    <td bgcolor="6070B0" colspan="3" width="88%">
      <p>&nbsp;</p>
    </td>
  </tr>
  <tr>
    <td width="12%" valign="top" bordercolor="#CCCCCC" rowspan="2">
      <table width="100%" border="0" cellspacing="3" cellpadding="1">
        <tr>
          <td colspan="2">&nbsp;</td>
        </tr>
        <%
         sParamValue =  gbmgc.getSysParamVal("EXIM_YESNO",new ArrayList());
         sSCSSParamValue =  gbmgc.getSysParamVal("SCSSYES_NO",new ArrayList());
		 System.out.println("BEFORE CALLING 1");
        	htMenu	= gbmclm.buildLoginMenu(vErrorObjects);
       		if	(htMenu.isEmpty())	{
				sErrorCode = "LICENSE_ERROR ";
				sErrorDesc = " You Dont Have Access for Any Module. Get a Valid License Key ";
				gbmerror.sCode = sErrorCode;
				gbmerror.sDesc = sErrorDesc;
				vErrorObjects.add(gbmerror);
				session.setAttribute("xErrorObjects",vErrorObjects);
				response.sendRedirect("../../jsp/common/gbm_comm_message.jsp");
				return;
			}
			if(!htMenu.isEmpty() )	{	// if loop for htMenu Starts Here

                 System.out.println("AFTER  CALLING 1");
				for (int i= 1;i<=htMenu.size();i++){ // for loop for htMenu Starts Here
                    System.out.println("INSIDE LOOP 10");
		 			vMenu		=	(ArrayList)htMenu.get(Integer.toString(i));
		 			sMenuDesc 	=	(String)vMenu.get(0);
		 			sMenuLink	=	(String)vMenu.get(1);
		 			System.out.println("INSIDE LOOP 11 vMenu"+vMenu);
					System.out.println("INSIDE LOOP 11 sMenuDesc"+sMenuDesc);
					System.out.println("INSIDE LOOP 11 sMenuLink"+sMenuLink);
		 			
					if((sParamValue.equalsIgnoreCase("Y") && sMenuDesc.equalsIgnoreCase("EXIM")) || !sMenuDesc.equals("EXIM") ){
if( (sParamValue.equalsIgnoreCase("Y") && sMenuDesc.equalsIgnoreCase("EXIM") ||
    (sSCSSParamValue.equalsIgnoreCase("Y") && sMenuDesc.equalsIgnoreCase("SCSS")) )  //  CODE ADDED BY SAMUEL.T TO DISPLAY SCSS SCHEME BASED ON SYSTEM PARAMETER
    || !sMenuDesc.equals("EXIM") && !sMenuDesc.equals("SCSS") ){
	        %>
        <tr>
	          <td width="25%" align="center">&nbsp;</td>
	          <td width="75%"><b><a href="<%=sMenuLink%>"><font size="1" face="MS Sans Serif" color="#FFFFFF"><%=sMenuDesc%></font></a></b></td>
        </tr>
		<%
		}
			}
		} // for loop for htMenu Ends Here
	}// if loop for htMenu Ends Here
	%>
      </table>
    </td>
    <td colspan="3" align="center" valign="top" width="88%" height="284"><img src="../../images/loginimage.jpg" width="646" height="264" border="0">
    </td>
  </tr>
  <tr>
    <td colspan="3" align="center" valign="top" width="88%">
      <table width="40%" border="0" cellspacing="0" cellpadding="8">
        <form method="post" name="gbm_login">
		<input type="Hidden" name="hdnUserId">
		<input type="Hidden" name="hdnSolId">
          <tr align="left" valign="top">
            <td align="center" valign="middle"><a href='javascript:logout("<%=sUserId%>","<%=sSolId%>")'><img src="../../images/finaclemenu.gif" width="97" height="18" border="0"></a></td>
            <td align="center" valign="middle">&nbsp;</td>
          </tr>
<!--	<iframe width="700" height="48" src="gbm_message_marquee.jsp"></iframe> -->

<%@ include file = "gbm_message_marquee.jsp" %>


</td></tr>
		</form>
        </table>
    </td>
  </tr>
</table>
</body>
</html>
