

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
        <form action="u3" method="post">
            <%
   String ok=(String)request.getAttribute("ok");
   String msg="";
   String a="";
   String b="";
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");
    a=(String)request.getAttribute("a");
   b=(String)request.getAttribute("b");
     }
    %>
          <table width="828" border="0" align="center" bgcolor="#FFFFFF" >
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
              <td height="471"><table width="928" border="0" align="center">
  <tr>
    <td width="918" height="46" align="center"><strong>ONLINE RESULT </strong></td>
  </tr>
   <tr>
    <td width="918" height="46" align="center"><table width="355" border="0">
      <tr>
        <td width="134">&nbsp;</td>
        <td width="10">&nbsp;</td>
        <td width="197">&nbsp;</td>
      </tr>
      <tr>
        <td>City Prefered </td>
        <td>&nbsp;</td>
        <td><label>
                        <input type="text" name="a1" style="width:180px;">
                      </label></td>
      </tr>
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
		
			ResultSet rs1 = st1.executeQuery("select distinct category from c_city ");
  %> 
                        <td width="248"><label>
            <select name="a2" value="" style="width:180px" >
			 <%
          while (rs1.next()) {
				pro1=rs1.getString(1);
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
        <td height="38">&nbsp;</td>
        <td>&nbsp;</td>
        <td><label><input type="submit" name="s1" value="Search"/></label><label><input type="reset" name="s2" Value="Cancel"/></label></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="925" border="0">
              <tr>
                <td width="919"><table width="918" height="43" border="3" >
   <tr>
      
      <td width="140" align="center"><strong>Place</strong></td>
      <td width="155" align="center"><strong>City</strong></td>
	  <td width="150" align="center"><strong>Address</strong></td>
	  <td width="122" align="center"><strong>Description</strong></td>
	   <td width="157" align="center"><strong>Rate</strong></td>
	   <td width="150" align="center">&nbsp;</td>
	   </tr>
	
	</table></td>
              </tr>
              <tr>
                <td height="73"><table width="917" border="1"  align=center>

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
		ResultSet rs = st.executeQuery("select * from c_city where city='"+request.getParameter("a1")+"' and category='"+request.getParameter("a2")+"' order by rating desc ");
		if(rs!=null)
                {
        while(rs.next())
		{	
       
	 %>
	
    <tr>
    
      <td width="137" height="34"><div align="center"><%=rs.getString(2)%></div></td>
      <td width="159"><div align="center"><%=rs.getString(3)%></div></td>
        <td width="149"><div align="center"><%=rs.getString(4)%></div></td>
      <strong>	  </strong>
	    <td width="122"><div align="center"><%=rs.getString(5)%></div></td>
		<td width="159"><div align="center"><%=rs.getString(6)%></div></td>
      <strong>	  </strong>
      <td width="151"><div align="center"><label><input name="s3" type="submit" style=" background-image:url(image/download.jpg)" Value="<%=rs.getString(1)%>" width="70px" height="60px" ></label><label><input name="s4" type="submit" style="background-image:url(image/Feedback.jpg)" Value="<%=rs.getString(1)%>" width="70px" height="60px" ></label></div></td>
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
	%><%
	String flag=(String)request.getAttribute("ss");
  
		if(flag!=null)
	{
		msg=(String)request.getAttribute("msg");
		
	}
%>
	
<%
String flag1=(String)request.getAttribute("ss1");
	String a1="";
	String a2="";
	String a3="";
	String a4="";
	
	String a6="";	
	if(flag1!=null)
	{		
		a1=(String)request.getAttribute("a11");
		a2=(String)request.getAttribute("a12");
		a3=(String)request.getAttribute("a13");
			a4=(String)request.getAttribute("a14");
a6=(String)request.getAttribute("a15");
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
