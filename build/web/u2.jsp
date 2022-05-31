
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><script>
    function showPosition() {
        if(navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
                var positionInfo = "Your current position is (" + "Latitude: " + position.coords.latitude + ", " + "Longitude: " + position.coords.longitude + ")";
                document.getElementById("result").innerHTML = positionInfo;
            });
        } else {
            alert("Sorry, your browser does not support HTML5 geolocation.");
        }
    }
</script>
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
         <form action="u1" method="post"><% HttpSession so = request.getSession(true);%>
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
              <td width="818" height="39" align="center"><span class="style1">SMART RECOMMENDATION SYSTEM </span></td>
            </tr>
            <tr>
              <td><img src="image/Banner.jpg"/ width="950" height="300"></td>
            </tr>
            <tr>
              <td><table width="942" border="0">
                <tr>
                  <td width="162" align="center"><a href="u1.jsp" class="style2">HOME</a></td>
                 <td width="162" align="center"><a href="u2.jsp" class="style2">CURRENT LOCATION  </a></td>
                   <td width="162" align="center"><a href="u3.jsp" class="style2">SEARCH</a></td>
                   <td width="162" align="center"><a href="u4.jsp" class="style2">FEEDBACK</a></td>
                   <td width="162" align="center"><a href="i2.jsp" class="style2">LOG OUT </a></td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td height="471"><table width="482" border="0" align="center">
                <tr>
                  <td width="476" height="47" align="center">CATEGORY</td>
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
                      <td height="39">Name</td>
                      <td>&nbsp;</td>
                      <td><label>
                      <input type="text" name="a2" style="width:180px;"  readonly="false" value="<%=so.getAttribute("un3")%>">
                      </label></td>
                    </tr>
					 <tr>
                      <td height="39">Location</td>
                      <td>&nbsp;</td>
                      <td><label>
                        <input type="text" name="a3" style="width:180px;">
                      </label></td>
                    </tr>
					
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
                        <input type="submit" name="s1" value="SUBMIT" onClick="showPosition();">
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
					<p align="center"><%=msg%></p>
				  </td>
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
