

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
	color: #993300;
}
.style2 {
	color: #993300;
	font-weight: bold;
}
.style4 {
	color: #990000;
	font-weight: bold;
}
.style5 {color: #CC0000}
-->
        </style>
</head>
     <body background="image/Lobby-Banner.jpg">
        <form action="i1" method="post">
		<%
   String ok=(String)request.getAttribute("ok");
   String msg="";
   String a="";
   String b="";
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");
 
     }
    %>
          <table width="828" border="0" align="center" bgcolor="#FFFFFF">
            <tr>
              <td width="818" height="34" align="center"><span class="style1">SMART RECOMMENDATION SYSTEM </span></td>
            </tr>
            <tr>
              <td><img src="image/Lobby-Banner.jpg" width="948" height="300"/></td>
            </tr>
            <tr>
              <td><table width="942" border="0">
                <tr>
                  <td width="162" align="center"><a href="index.jsp" class="style2">HOME</a></td>
                 <td width="162" align="center"><a href="i1.jsp" class="style2">REGISTER</a></td>
                   <td width="162" align="center"><a href="i2.jsp" class="style2">LOGIN</a></td>
            <td width="162" align="center"><a href="i3.jsp" class="style2">ABOUT US</a></td>
                 <td width="162" align="center"><a href="i4.jsp" class="style2">CONTACT US</a></td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td height="471"><table width="482" border="0" align="center">
                <tr>
                  <td width="476" height="40" align="center"><span class="style4">USER REGISTER </span></td>
                </tr>
                <tr>
                  <td><table width="431" border="0" align="center">
				
                    
		 <tr>
                      <td height="35"><strong>USERNAME </strong></td>
                      <td>&nbsp;</td>
                      <td><label>
                        <input type="text" name="a1" style="width:180px;">
                      </label></td>
                    </tr>
					 <tr>
                      <td height="39"><strong>PASSWORD</strong></td>
                      <td>&nbsp;</td>
                      <td><label>
                        <input type="password" name="a2" style="width:180px;">
                      </label></td>
                    </tr>
					<tr>
                      <td width="177" height="32"><strong>RETYPE PASSWORD </strong></td>
                      <td width="10">&nbsp;</td>
                      <td width="232"><label>
                        <input type="password" name="a3" style="width:180px;">
                      </label></td>
                    </tr>
				
                    <tr>
                      <td width="177" height="46"><strong>NAME</strong></td>
                      <td width="10">&nbsp;</td>
                      <td width="232"><input type="text" name="a4" style="width:180px;"></td>
                    </tr>
                    <tr>
                      <td height="77"><strong>ADDRESS</strong></td>
                      <td>&nbsp;</td>
                   <td><label>
                        <textarea name="a5" rows="4" style="width:180px;"></textarea>
                      </label></td></tr>
					   <tr>
                      <td height="34"><strong>MAIL</strong></td>
                      <td>&nbsp;</td>
                   <td><label>
                        <input name="a6" type="text" style="width:180px;" value="">
                      </label></td></tr>
					     <tr>
                      <td height="29"><strong>CONTACT NO </strong></td>
                      <td>&nbsp;</td>
                   <td><label>
                        <input name="a7" type="text" style="width:180px;" value="">
                      </label></td></tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td><label></label>
                      &nbsp;&nbsp;&nbsp;&nbsp;<label></label></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td><label>
                        <input type="submit" name="s1" value="SUBMIT">
                      </label>&nbsp;&nbsp;&nbsp;&nbsp;<label>
                        <input type="reset" name="s2" value="CANCEL">
                      </label></td>
                    </tr>
					 <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                  </table> 
                    <p align="center" class="style5"><%=msg%></p>					</td>
                </tr>
              </table>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
            </tr>
          </table>
            
        </form>
    </body>
</html>
