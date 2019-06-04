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
    <td width="16%" bgcolor="6070B0" align="center"><font color="#FFFFFF" size="2"><b><font face="Arial"></font></b></font></td>
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
