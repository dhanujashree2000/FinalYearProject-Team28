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
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class a1 extends HttpServlet {

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
         String a3="";
               

       
                Connection con=null;
      	      String url="jdbc:mysql://localhost:3306/city";
	      String driver="com.mysql.jdbc.Driver";
	      Class.forName(driver);
	       con=(Connection)DriverManager.getConnection(url, "root","root");
             Statement stmt = con.createStatement();
                Statement st = con.createStatement();
               Statement st1 = con.createStatement();
   int t1=0,t2=0,t3=0;
    if((a1.equals(""))||(a2.equals("")))
              {
                   request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please press enter");
                      RequestDispatcher rs=request.getRequestDispatcher("a2.jsp");
                     rs.forward(request, response); 
              }else{
          ResultSet rs=st.executeQuery("select * from c_city1 where cname='"+a1+"' and type='"+a2+"'");
                if(rs.next()){
                   request.setAttribute("ok", "1");
                    request.setAttribute("msg",
                            "Already exist");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("a2.jsp");
                    requestdispatcher.forward(request, response);
              }else{
                    ResultSet rs1=st1.executeQuery("select max(cid) from c_city1");
                if(rs1.next()){
                  t1=Integer.parseInt(rs1.getString(1));
                  t2=t1+1;
                    
              }
                a3=""+t2;
                  
                    int val = stmt.executeUpdate("insert into c_city1 values('" + a3+ "','" + a1 + "','" + a2 + "')");
                    
                    if (val == 1) {
                        request.setAttribute("ok", "1");
                        request.setAttribute("msg",
                                "Added Successfully");
                        RequestDispatcher requestdispatcher = request.getRequestDispatcher("a2.jsp");
                        requestdispatcher.forward(request, response);

                    }
               else {
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg",
                            "Transfered Failure");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("a2.jsp");
                    requestdispatcher.forward(request, response);
                } 
                }
       
            }
            }else if(request.getParameter("s2")!=null){
            RequestDispatcher requestdispatcher = request.getRequestDispatcher("a2.jsp");
                    requestdispatcher.forward(request, response);
        }        
            else {
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg",
                            "Please enter all values");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("a2.jsp");
                    requestdispatcher.forward(request, response);
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
