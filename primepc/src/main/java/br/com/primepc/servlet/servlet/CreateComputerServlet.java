    package br.com.primepc.servlet.servlet;

    import br.com.primepc.servlet.dao.ComputerDao;
    import br.com.primepc.servlet.model.Computer;

    import javax.servlet.annotation.WebServlet;
    import javax.servlet.http.HttpServlet;
    import javax.servlet.http.HttpServletRequest;
    import javax.servlet.http.HttpServletResponse;
    import java.io.IOException;

    @WebServlet("/create-computer")
    public class CreateComputerServlet extends HttpServlet {

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

            String computerId = req.getParameter("id");
            String computerName = req.getParameter("computer-name");
            String computerCpu = req.getParameter("computer-cpu");
            String computerGpu = req.getParameter("computer-gpu");
            String computerRam = req.getParameter("computer-ram");
            String computerTipo = req.getParameter("computer-tipo");
            String computerUso = req.getParameter("uso");
            String computerDesempenho = req.getParameter("computer-desempenho");


            ComputerDao computerDao = new ComputerDao();
            Computer computer = new Computer(computerName, computerCpu, computerGpu, computerRam, computerTipo, computerUso,computerDesempenho);

            if (computerId == "" || computerId == null) {

                computerDao.createComputer(computer);

            } else {

                computerDao.updateComputer(computer);
            }
            resp.sendRedirect("/find-all-computers");
        }

    }