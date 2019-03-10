package de.telran.grigoryev.servlets;

import de.telran.grigoryev.models.User;
import de.telran.grigoryev.repositories.UserRepository;
import de.telran.grigoryev.repositories.UsersRepositoryInMemoryImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/signUp")

public class SignUpServlet extends HttpServlet {

    private UserRepository userRepository;

    @Override
    public void init() throws ServletException {
        this.userRepository = new UsersRepositoryInMemoryImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<User> users = userRepository.findAll();
        req.setAttribute("usersFromServer",users);
        RequestDispatcher dispatcher = req.getServletContext().getRequestDispatcher("/WEB-INF/jsp/signUp.jsp");
        dispatcher.forward(req, resp);
    }

}
