
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
.style3 {color: #0066CC}
.style4 {color: #0066CC; font-weight: bold; }
-->
        </style>
</head>
   <body background="image/Lobby-Banner.jpg">
        <p>&nbsp;</p>
        <form action="u5" method="post"><% HttpSession so = request.getSession(true);%>
          <table width="828" border="0" align="center" bgcolor="#FFFFFF">
            <tr>
              <td width="818" height="39" align="center"><span class="style1">SMART RECOMMENDATION SYSTEM </span></td>
            </tr>
            <tr>
              <td><img src="image/Banner.jpg"/ width="950" height="300"></td>
            </tr>
            <tr>
              <td><table width="951" border="0">
                <tr>
                  <td width="184" align="center"><a href="u1.jsp" class="style2 style3">HOME</a></td>
                 <td width="184" align="center"><a href="u2.jsp" class="style4">CURRENT LOCATION  </a></td>
                   <td width="184" align="center"><a href="u3.jsp" class="style4">SEARCH</a></td>
                   <td width="184" align="center"><a href="u4.jsp" class="style4">FEEDBACK</a></td>
                   <td width="193" align="center"><a href="i2.jsp" class="style4">LOG OUT </a></td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td><table width="482" border="0" align="center">
                <tr>
                  <td width="476" height="47" align="center">FEEDBACK</td>
                </tr>
                <tr>
                  <td><table align="center">
		 <tr>
                      <td width="134" height="35">Username </td>
                      <td width="6">&nbsp;</td>
                      <td width="248"><label>
                        <input type="text" name="a1" style="width:180px;" readonly="false" value="<%=so.getAttribute("un1")%>">
                      </label></td>
                    </tr>
					 <tr>
                      <td height="50">Name</td>
                      <td>&nbsp;</td>
                      <td><label>
                      <input type="text" name="a2" style="width:180px;"  readonly="false" value="<%=so.getAttribute("un3")%>">
                      </label></td>
                    </tr>
					 <tr>
                      <td height="39">City</td>
                      <td>&nbsp;</td>
                      <td><label>
                        <input type="text" name="a3" style="width:180px;" readonly="false" value="<%=so.getAttribute("a1")%>">
                      </label></td>
                    </tr>
					 <tr>
                      <td height="39">Place</td>
                      <td>&nbsp;</td>
                      <td><label>
                        <input type="text" name="a4" style="width:180px;" readonly="false" value="<%=so.getAttribute("a2")%>">
                      </label></td>
                    </tr>
					 <tr>
                      <td height="39">Feedback</td>
                      <td>&nbsp;</td>
                      <td><label>
                      <input type="text" name="a5" style="width:180px;">
                      </label></td>
                    </tr>
                    <tr>
                      <td>Rating</td>
                      <td>&nbsp;</td>
                     <td><span class="style50">
                                    <label>
                                    <input type="radio" name="a6" value="1" />
                                      1 </label>
                                    <label>
                                    <input type="radio" name="a6" value="2" />
                                      2 </label>
                                    <label>
                                    <input type="radio" name="a6" value="3" />
                                    </label>
                                    <label> 3
                                      <input type="radio" name="a6" value="4" />
                                      4 </label>
                                    <label>
                                    <input type="radio" name="a6" value="5" />
                                    </label>
                                    5</span></td>
                    </tr>
                    <tr>
                      <td height="47">&nbsp;</td>
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
					
				  </td>
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
