package br.com.primepc.servlet.servlet;

import br.com.primepc.servlet.dao.ComputerDao;
import br.com.primepc.servlet.model.Computer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/find-all-computers")
public class ListComputerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Computer> computers = new ComputerDao().findAllComputers();

        req.setAttribute("computers", computers);

        req.getRequestDispatcher("dashboard.jsp").forward(req, resp);

    }
}