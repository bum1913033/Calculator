package org.personal.calculate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Calculator" , urlPatterns = {"/calculate"})
public class Calculator extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String screen = req.getParameter("screen");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("./");
        Calculation calculate = new Calculation();

        String prefix = calculate.infixToPreFix(screen).toString();

        Double evaluatePrefix = calculate.evaluatePrefix(prefix);
        req.setAttribute("result" , evaluatePrefix);
        requestDispatcher.forward(req,resp);
    }
}

