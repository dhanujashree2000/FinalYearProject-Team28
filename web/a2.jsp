

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
-->
        </style>
</head>
     <body background="image/Lobby-Banner.jpg">
        <form action="a1" method="post">
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
              <td width="818" height="38" align="center"><span class="style1">SMART RECOMMENDATION SYSTEM </span></td>
            </tr>
            <tr>
              <td><img src="image/Banner.jpg"/ width="950" height="300"></td>
            </tr>
            <tr>
              <td><table width="942" border="0">
                <tr>
                  <td width="139" height="31" align="center"><a href="a1.jsp" class="style2">HOME</a></td>
                  <td width="152" align="center"><a href="a2.jsp" class="style2">CATEGORY </a></td>
                  <td width="200" align="center"><a href="a3.jsp" class="style2">ADD DETAILS </a></td>
                  <td width="245" align="center"><a href="a4.jsp" class="style2">INFORMATION</a></td>
                  <td width="245" align="center"><a href="a5.jsp" class="style2">FEEDBACK</a></td>
                  <td width="184" align="center"><a href="i2.jsp" class="style2">LOG-OUT</a></td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td height="471" align="center"><table width="482" border="0" align="center">
                <tr>
                  <td width="476" height="24" align="center">CATEGORY</td>
                </tr>
                <tr>
                  <td><table width="379" border="0" align="center">
                    <tr>
                      <td width="144">TYPE</td>
                      <td width="11">&nbsp;</td>
                      <td width="210"><label>
                        <input type="text" name="a1" style="width:180px;">
                      </label></td>
                    </tr>
                    <tr>
                      <td>CATEGORY</td>
                      <td>&nbsp;</td>
                      <td><label>
                        <input type="text" name="a2" style="width:180px;">
                      </label></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
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
                  <p align="center"><%=msg%></p></td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
            </tr>
          </table>
            
        </form>
    </body>
</html>
