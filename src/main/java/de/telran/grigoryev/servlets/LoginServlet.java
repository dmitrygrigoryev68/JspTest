package de.telran.grigoryev.servlets;


import de.telran.grigoryev.repositories.UserRepository;
import de.telran.grigoryev.repositories.UsersRepositoryInMemoryImpl;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet  extends HomeServlet{

    private UserRepository userRepository;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getServletContext()
                .getRequestDispatcher("/jsp/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String password = req.getParameter("password");

        if (userRepository.isExist(name,password)){
            HttpSession session = req.getSession();
            session.setAttribute("user", name);
            req.getServletContext().getRequestDispatcher("/home").forward(req,resp);
        }else {
            resp.sendRedirect(req.getContextPath() + "/login");

        }
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        this.userRepository = new UsersRepositoryInMemoryImpl();
    }
}
