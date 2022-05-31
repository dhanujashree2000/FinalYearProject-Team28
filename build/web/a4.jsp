

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
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
        <form action="" method="post">
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
              <td height="471"><table width="893" border="0" align="center">
                <tr>
                  <td width="887" align="center">INFORMATION</td>
                </tr>
                <tr>
                  <td align="center"><table width="895" border="0">
              <tr>
                <td width="889"><table width="882" height="43" border="3" >
   <tr>
      
      <td width="65" align="center"><strong>Uid</strong></td>
	  <td width="94" align="center"><strong>Place</strong></td>
	   <td width="104" align="center"><strong>City</strong></td>
	   <td width="137" align="center"><strong>Category</strong></td>
	   <td width="166" align="center"><strong>Address</strong></td>
	   <td width="178" align="center"><strong>Description</strong></td>
	   <td width="87" align="center"><strong>Rating</strong></td>
	   </tr>
	
	</table></td>
              </tr>
              <tr>
                <td height="47"><table width="886" border="1"  align=center>

    <% int index=0;
	try
	{    Calendar currentDate = Calendar.getInstance();
  SimpleDateFormat formatter= 
  new SimpleDateFormat("yyyy-MM-dd");
  String dateNow = formatter.format(currentDate.getTime());
  System.out.println("Now the date is :=>  " + dateNow);
            String a11=null,a12="",a13="";
             	   HttpSession so = request.getSession(true);
 System.out.println(a11);
		int flag=0;  

		String url="jdbc:mysql://localhost:3306/city";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
		ResultSet rs = st.executeQuery("select * from c_city");
		if(rs!=null)
                {
        while(rs.next())
		{	
       
	 %>
	
    <tr>
    
      <td width="67" height="34"><div align="center"><%=rs.getString(1)%></div></td>
      <strong>	  </strong>
	    <td width="97"><div align="center"><%=rs.getString(2)%></div></td>
		<td width="94"><div align="center"><%=rs.getString(3)%></div></td>
      <strong>	  </strong>
      <td width="141"><div align="center">
        <label><%=rs.getString(5)%></label>
       
      </div></td><td width="163"><div align="center"><%=rs.getString(6)%></div></td>
		<td width="179"><div align="center"><%=rs.getString(9)%></div></td>
      <strong>	  </strong>
      <td width="99"><div align="center">
        <label><%=rs.getString(10)%></label>
       
      </div></td>
	   <%
  index++;
													}
													} else 
													{
													%>
    No items found....!
    <%
													}
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
  </table></td>
              </tr>
            </table></td>
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