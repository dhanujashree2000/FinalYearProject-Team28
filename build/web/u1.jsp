

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
        <form action="" method="post"><% HttpSession so = request.getSession(true);%>
          <table width="828" border="0" align="center" bgcolor="#FFFFFF">
            <tr>
              <td width="818" height="39" align="center"><span class="style1">SMART RECOMMENDATION SYSTEM </span></td>
            </tr>
            <tr>
              <td><img src="image/Banner.jpg"/ width="950" height="300"></td>
            </tr>
            <tr>
              <td><table width="942" border="0">
                <tr>
                  <td width="162" align="center"><a href="u1.jsp" class="style2">HOME</a></td>
                 <td width="162" align="center"><a href="u2.jsp" class="style2">CURRENT LOCATION </a></td>
                   <td width="162" align="center"><a href="u3.jsp" class="style2">SEARCH</a></td>
                   <td width="162" align="center"><a href="u4.jsp" class="style2">FEEDBACK</a></td>
                   <td width="162" align="center"><a href="i2.jsp" class="style2">LOG OUT </a></td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td><p>&nbsp;</p>
                <p>Welcome <%=so.getAttribute("un3")%></p>
                <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
            </tr>
          </table>
            
        </form>
    </body>
</html>
