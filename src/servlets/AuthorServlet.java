package servlets;

import entity.Author;
import entity.Book;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import session.AuthorFacade;

@WebServlet(name = "AuthorServlet", urlPatterns = {""
+       "/newAuthor", 
        "/createAuthor", 
        "/listAuthors",
})
public class AuthorServlet extends HttpServlet {
    @EJB private AuthorFacade authorFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String path = request.getServletPath();
        switch (path) {
            
            case "/newAuthor":
                request.getRequestDispatcher("/WEB-INF/createAuthor.jsp").forward(request, response);
                
                break;
            case "/createAuthor":
                String name = request.getParameter("name");
                String lastname = request.getParameter("lastname");
                Author author = new Author();
                author.setName(name);
                author.setlastName(lastname);
                authorFacade.create(author);
                request.setAttribute("info", "Author has been created successfully");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                
                break;
            case "/listAuthors":
                request.setAttribute("listAuthors", authorFacade.findAll());
                request.getRequestDispatcher("/WEB-INF/listAuthors.jsp").forward(request, response);
                break;
            
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
