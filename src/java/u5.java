/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class u5 extends HttpServlet {

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
        try { HttpSession so = request.getSession(true);
            if (request.getParameter("s1") != null) {
                            
                String a1 = request.getParameter("a1");
                String a2 = request.getParameter("a2");
        String a3 = request.getParameter("a3");
                String a4 = request.getParameter("a4");
               
  String a5 = request.getParameter("a5");
                String a6 = request.getParameter("a6");
       String a7="";
        String a9 = request.getParameter("a9");
                Connection con=null;
      	      String url="jdbc:mysql://localhost:3306/city";
	      String driver="com.mysql.jdbc.Driver";
	      Class.forName(driver);
	       con=(Connection)DriverManager.getConnection(url, "root","root");
               Statement stmt = con.createStatement();
                Statement st = con.createStatement();
               Statement st1 = con.createStatement();
   int t1=0,t2=0,t3=0;
    if((a1.equals(""))||(a2.equals(""))||(a3.equals("")))
              {
                   request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please press enter");
                      RequestDispatcher rs=request.getRequestDispatcher("u5.jsp");
                     rs.forward(request, response); 
              }else{
         double v=0,v1=0;
                 int val=0;
                    ResultSet rs1=st1.executeQuery("select * from c_city where place='"+a3+"' and city='"+a4+"'");
                if(rs1.next()){
                    String sd=rs1.getString(10);
                    System.out.println(rs1.getString(10));
                   v=Double.parseDouble(sd);
                   v1=(v+Double.parseDouble(a6))/2;
                }
                 System.out.println("select * from c_city where place='"+a3+"' and city='"+a4+"'");
                System.out.println(v+"dd"+v1+"sdd"+Integer.parseInt(a6));
              val = stmt.executeUpdate("update c_city set rating='" + v1+ "' where place='"+a3+"' and city='"+a4+"'");
                 
                    
            
                    val = stmt.executeUpdate("insert into c_feedback values('" + a1 + "','" + a2 + "','" + a4 + "','" + a3 + "','" + a5 + "','" + a6 + "','" + so.getAttribute("a3") + "')");
                    
                    if (val == 1) {
                        request.setAttribute("ok", "1");
                        request.setAttribute("msg",
                                "Added Successfully");
                        RequestDispatcher requestdispatcher = request.getRequestDispatcher("u5.jsp");
                        requestdispatcher.forward(request, response);

                    }
               else {
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg",
                            "Transfered Failure");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("u5.jsp");
                    requestdispatcher.forward(request, response);
                }  
                }
//                a7=""+t2;
//      String postcode=a5;
// String latLongs[] = getLatLongPositions(postcode);
   // System.out.println("Latitude: "+latLongs[0]+" and Longitude: "+latLongs[1]);
                  
                    

                   
          
       
            }
        } catch (Exception e) {
            e.printStackTrace();
        }  finally {            
            out.close();
        }
    
    }

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
