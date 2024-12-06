package br.com.primepc.servlet.servlet;


import br.com.primepc.servlet.dao.ComputerDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-computer")
public class DeleteComputerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String computerId = req.getParameter("id");

        new ComputerDao().deleteComputerById(computerId);

        resp.sendRedirect("/find-all-computers");

    }

}