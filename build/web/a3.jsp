

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
        <form action="a2" method="post">
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
          <table width="828" border="0" align="center" bgcolor="#FFFFFF" >
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
              <td height="471"><table width="482" border="0" align="center">
                <tr>
                  <td width="476" height="24" align="center">CATEGORY</td>
                </tr>
                <tr>
                  <td><table width="408" border="0" align="center">
				  <%
				  String a8="";
				  String s1=request.getParameter("s3");
				  if(s1!=null){
				 a8= request.getParameter("a3");
				  }
				  
				  %>
                    <tr>
                      <td width="137" height="32">TYPE</td>
                      <td width="10">&nbsp;</td>
                   
                        <%

  String pro=null;
 		try {
			int flag = 0;

			 Connection con=null;
      	      String url="jdbc:mysql://localhost:3306/city";
	      String driver="com.mysql.jdbc.Driver";
	      Class.forName(driver);
	       con=(Connection)DriverManager.getConnection(url, "root","root");  
               Statement stmt = con.createStatement();
			Statement st1 = con.createStatement();
		
			ResultSet rs1 = st1.executeQuery("select distinct type  from c_city1 ");
  %> 
                        <td width="248"><label>
            <select name="a3" value="" style="width:180px" >
                 <option value="<%=a8%>"><%=a8%></option>
			 <%
          while (rs1.next()) {
				pro=rs1.getString(1);
           %>
              <option><%=pro%></option><%} %>
            </select>
            </label><input type="submit" name="s3" value="Click"></td>
                       
          <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %> 
                    </tr>
					</table>
					<table align="center">
                    <tr>
                      <td width="134" height="39">CATEGORY</td>
                      <td width="6">&nbsp;</td>
                        <%

  String pro1=null;
 		try {
			int flag = 0;

			 Connection con=null;
      	      String url="jdbc:mysql://localhost:3306/city";
	      String driver="com.mysql.jdbc.Driver";
	      Class.forName(driver);
	       con=(Connection)DriverManager.getConnection(url, "root","root");  
               Statement stmt = con.createStatement();
			Statement st1 = con.createStatement();
		
			ResultSet rs1 = st1.executeQuery("select *  from c_city1 where type='"+request.getParameter("a3")+"' ");
  %> 
                        <td width="248"><label>
            <select name="a4" value="" style="width:180px" >
			 <%
          while (rs1.next()) {
				pro1=rs1.getString(3);
           %>
              <option><%=pro1%></option><%} %>
            </select>
            </label></td>
                       
          <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>                    </tr>
		 <tr>
                      <td height="35">PLACE </td>
                      <td>&nbsp;</td>
                      <td><label>
                        <input type="text" name="a1" style="width:180px;">
                      </label></td>
                    </tr>
					 <tr>
                      <td height="39">CITY</td>
                      <td>&nbsp;</td>
                      <td><label>
                        <input type="text" name="a2" style="width:180px;">
                      </label></td>
                    </tr>
                    <tr>
                      <td height="80">ADDRESS</td>
                      <td>&nbsp;</td>
                   <td><label>
                        <textarea name="a5" rows="4" style="width:180px;"></textarea>
                      </label></td></tr>
                    <tr>
                      <td>LATITUDE</td>
                      <td>&nbsp;</td>
                   <td><label>
                        <input name="a7" type="text" style="width:180px;" value="">
                      </label></td></tr>
					  <tr>
                      <td>LONGITUDE</td>
                      <td>&nbsp;</td>
                   <td><label>
                        <input name="a8" type="text" style="width:180px;" value="">
                      </label></td></tr>
					  
					   <tr>
					   <tr>
                      <td>DESCRIPTION</td>
                      <td>&nbsp;</td>
                   <td><label>
                        <textarea name="a6" rows="4" style="width:180px;"></textarea>
                      </label></td></tr><tr>
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
					<p align="center"><%=msg%></p>
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
