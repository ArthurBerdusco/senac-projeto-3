package br.com.primepc.servlet.servlet;

import br.com.primepc.servlet.dao.AccountDao;
import br.com.primepc.servlet.model.Account;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/register")
public class RegisterAccountServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String name = req.getParameter("new-username");
        String password = req.getParameter("new-password");
        String adminParam = req.getParameter("new-admin");
        boolean admin = Boolean.parseBoolean(adminParam);

        Account newAccount = new Account(name, password, admin);
        AccountDao accountDao = new AccountDao();

        boolean accountCreated = accountDao.createAccount(newAccount);

        PrintWriter out = resp.getWriter();

        if (accountCreated) {
            out.println("<script>alert('Conta criada com sucesso!');</script>");
        } else {
            out.println("<script>alert('Conta já existe. Escolha um nome de usuário diferente.');</script>");
        }

        out.println("<script>setTimeout(function() { window.location.href = '/login.jsp'; }, 3000);</script>");
    }
}
