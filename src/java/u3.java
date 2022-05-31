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
public class u3 extends HttpServlet {

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
            HttpSession so = request.getSession(true);
            String a1 = null,a2 = null,a3;
           Connection con=null;
      	      String url="jdbc:mysql://localhost:3306/city";
	      String driver="com.mysql.jdbc.Driver";
	      Class.forName(driver);
	       con=(Connection)DriverManager.getConnection(url, "root","root");
                Statement st=con.createStatement();
                 Statement st1=con.createStatement();
                Statement st2 = con.createStatement();
               Statement st3 = con.createStatement();
            if(request.getParameter("s1")!=null){
                 request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please Enter all values");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("u3.jsp");
		 requestdispatcher.forward(request, response);
            }else if(request.getParameter("s2")!=null){
                 request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please Enter all values");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("u3.jsp");
		 requestdispatcher.forward(request, response);
            }else if(request.getParameter("s3")!=null){
                String ss="";
                ResultSet rs2=st2.executeQuery("select * from c_location where uname='"+so.getAttribute("un1")+"'");
                if(rs2.next()){
                    ss=rs2.getString(3);
                    
                            }
                
                  ResultSet rs1=st1.executeQuery("select * from c_city where uid='"+request.getParameter("s3")+"'");
                if(rs1.next()){
                    a1=rs1.getString(2);
                    a2=rs1.getString(3);
                            }
              String hf="https://www.google.com/maps/dir/"+ss+"/"+a1+","+a2+"/";
               
                    response.sendRedirect(hf);
            }else if(request.getParameter("s4")!=null){
                    ResultSet rs2=st2.executeQuery("select * from c_city where uid='"+request.getParameter("s4")+"'");
                if(rs2.next()){
                    a1=rs2.getString(2);
                    a2=rs2.getString(3);
                }
                 request.setAttribute("ok", "1");
                      so.setAttribute("a1",a1);
                        so.setAttribute("a2",a2);
                         so.setAttribute("a3",request.getParameter("s4"));
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("u5.jsp");
		 requestdispatcher.forward(request, response);
            }else{
                 request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please Enter all values");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("u3.jsp");
		 requestdispatcher.forward(request, response);
            }
            
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
            finally {
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
