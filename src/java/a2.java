/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.InputStreamReader;
import java.io.BufferedReader;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;
import javax.xml.xpath.XPathConstants;
import org.w3c.dom.Document;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;

/**
 *
 * @author Admin
 */
public class a2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       try {
            if (request.getParameter("s1") != null) {
                            
                String a1 = request.getParameter("a1");
                String a2 = request.getParameter("a2");
        String a3 = request.getParameter("a3");
                String a4 = request.getParameter("a4");
               
  String a5 = request.getParameter("a5");
                String a6 = request.getParameter("a6");
       String a7="";
       String a8 = request.getParameter("a7");
        String a9 = request.getParameter("a8");
                Connection con=null;
      	      String url="jdbc:mysql://localhost:3306/city";
	      String driver="com.mysql.jdbc.Driver";
	      Class.forName(driver);
	       con=(Connection)DriverManager.getConnection(url, "root","root"); 
             Statement stmt = con.createStatement();
                Statement st = con.createStatement();
               Statement st1 = con.createStatement();
   int t1=0,t2=0,t3=0;
    if((a1.equals(""))||(a2.equals(""))||(a5.equals(""))||(a6.equals("")))
              {
                   request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please press enter");
                      RequestDispatcher rs=request.getRequestDispatcher("a3.jsp");
                     rs.forward(request, response); 
              }else{
         
                    ResultSet rs1=st1.executeQuery("select max(uid) from c_city");
                if(rs1.next()){
                  t1=Integer.parseInt(rs1.getString(1));
                  t2=t1+1;
                    
              }
                a7=""+t2;
      String postcode=" Ashram, Golden Globe, Auroville, Bommayapalayam, Tamil Nadu 605101";
 //String latLongs[] = getLatLongPositions(postcode);
  //  System.out.println("Latitude: "+latLongs[0]+" and Longitude: "+latLongs[1]);
                  
                  

                    int val = stmt.executeUpdate("insert into c_city values('" + a7+ "','" + a1 + "','" + a2 + "','" + a3 + "','" + a4 + "','" + a5 + "','" + a8 + "','" +a9 + "','" + a6 + "','0')");
                    
                    if (val == 1) {
                        request.setAttribute("ok", "1");
                        request.setAttribute("msg",
                                "Added Successfully");
                        RequestDispatcher requestdispatcher = request.getRequestDispatcher("a3.jsp");
                        requestdispatcher.forward(request, response);

                    }
               else {
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg",
                            "Transfered Failure");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("a3.jsp");
                    requestdispatcher.forward(request, response);
                } 
             
       
            }
            }else if(request.getParameter("s2")!=null){
            RequestDispatcher requestdispatcher = request.getRequestDispatcher("a3.jsp");
                    requestdispatcher.forward(request, response);
        }        
            else {
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg",
                            "Please enter all values");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("a3.jsp");
                    requestdispatcher.forward(request, response);
                }
        } catch (Exception e) {
            e.printStackTrace();
        }  finally {            
            out.close();
        }
    }
// public static String[] getLatLongPositions(String address) throws Exception
//  {
//    int responseCode = 0;
//    String api = "http://maps.googleapis.com/maps/api/geocode/xml?address=" + URLEncoder.encode(address, "UTF-8") + "&sensor=true";
//    URL url = new URL(api);
//    HttpURLConnection httpConnection = (HttpURLConnection)url.openConnection();
//    httpConnection.connect();
//    responseCode = httpConnection.getResponseCode();
//    if(responseCode == 200)
//    {
//      DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();;
//      Document document = builder.parse(httpConnection.getInputStream());
//      XPathFactory xPathfactory = XPathFactory.newInstance();
//      XPath xpath = xPathfactory.newXPath();
//      XPathExpression expr = xpath.compile("/GeocodeResponse/status");
//      String status = (String)expr.evaluate(document, XPathConstants.STRING);
//      if(status.equals("OK"))
//      {
//         expr = xpath.compile("//geometry/location/lat");
//         String latitude = (String)expr.evaluate(document, XPathConstants.STRING);
//         expr = xpath.compile("//geometry/location/lng");
//         String longitude = (String)expr.evaluate(document, XPathConstants.STRING);
//         return new String[] {latitude, longitude};
//      }
//      else
//      {
//         throw new Exception("Error from the API - response status: "+status);
//      }
//    }
//    return null;
//  }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
