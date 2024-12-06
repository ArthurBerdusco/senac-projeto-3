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

@WebServlet("/especificacao")
public class EspecificacaoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtém o parâmetro 'nome' da URL
        String nome = request.getParameter("nome");

        if (nome != null && !nome.isEmpty()) {

            List<Computer> computers = new ComputerDao().findByName(nome);
            System.out.println(computers);
            request.setAttribute("computers", computers);

            request.getRequestDispatcher("especificacao.jsp").forward(request, response);
        } else {
            response.sendRedirect("pagina-de-erro.jsp");
        }
    }
}