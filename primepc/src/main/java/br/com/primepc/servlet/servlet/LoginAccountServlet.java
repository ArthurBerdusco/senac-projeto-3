package br.com.primepc.servlet.servlet;

import br.com.primepc.servlet.dao.AccountDao;
import br.com.primepc.servlet.model.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/login")
public class LoginAccountServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        AccountDao accountDao = new AccountDao();
        boolean isValidCredentials = accountDao.validateUserCredentials(username, password);

        if (isValidCredentials) {
            // Verificar se o usuário é um administrador
            Usuario usuario = accountDao.validateAdmin(username, password);
            boolean isAdmin = (usuario != null && usuario.isAdmin());

            // Configurar informações na sessão
            HttpSession session = req.getSession();
            session.setAttribute("username", username);
            session.setAttribute("isAdmin", isAdmin);

            // Encaminhar a solicitação para a página apropriada
            if (isAdmin) {
                resp.sendRedirect("/find-all-computers");
            } else {
                resp.sendRedirect("/usuario.jsp");
            }
        } else {
            // Credenciais inválidas, exibir alerta
            resp.setContentType("text/html");
            resp.getWriter().println("<script>alert('Usuário ou senha inválidos. Tente novamente.');</script>");
        }
    }
}
