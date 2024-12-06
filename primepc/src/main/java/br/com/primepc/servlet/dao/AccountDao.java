    package br.com.primepc.servlet.dao;

    import br.com.primepc.servlet.model.Account;
    import br.com.primepc.servlet.model.Usuario;

    import java.sql.Connection;
    import java.sql.DriverManager;
    import java.sql.PreparedStatement;
    import java.sql.ResultSet;

    public class AccountDao {

        public boolean createAccount(Account newAccount) {
            String SQL_INSERT = "INSERT INTO ACCOUNT (NAME, PASSWORD, ADMIN) VALUES (?,?, ?)";
            String SQL_SELECT = "SELECT COUNT(*) FROM ACCOUNT WHERE NAME = ?";

            try {
                Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");
                System.out.println("Success in database connection");

                // Verifique se o nome de usuário já existe na tabela
                PreparedStatement selectStatement = connection.prepareStatement(SQL_SELECT);
                selectStatement.setString(1, newAccount.getName());
                ResultSet resultSet = selectStatement.executeQuery();

                if (resultSet.next() && resultSet.getInt(1) > 0) {
                    // O nome de usuário já existe, conta duplicada
                    System.out.println("Account with the same name already exists.");
                    return false;
                }

                // Se o nome de usuário não existe, insira a nova conta
                PreparedStatement insertStatement = connection.prepareStatement(SQL_INSERT);
                insertStatement.setString(1, newAccount.getName());
                insertStatement.setString(2, newAccount.getPassword());
                insertStatement.setBoolean(3, newAccount.isAdmin());

                insertStatement.execute();

                System.out.println("Success in inserting account");
                connection.close();
                return true;


            } catch (Exception e) {
                System.out.println("Fail in database connection");
                return false;
            }
        }

        public boolean validateUserCredentials(String username, String password) {
            String SQL_SELECT = "SELECT COUNT(*) FROM ACCOUNT WHERE NAME = ? AND PASSWORD = ?";

            try {
                Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");
                System.out.println("Success in database connection");

                // Verifique se o nome de usuário e a senha correspondem a uma entrada na tabela
                PreparedStatement selectStatement = connection.prepareStatement(SQL_SELECT);
                selectStatement.setString(1, username);
                selectStatement.setString(2, password);
                ResultSet resultSet = selectStatement.executeQuery();

                if (resultSet.next() && resultSet.getInt(1) > 0) {
                    // As credenciais do usuário são válidas
                    System.out.println("User credentials are valid.");
                    connection.close();
                    return true;
                } else {
                    // As credenciais do usuário não são válidas
                    System.out.println("Invalid user credentials.");
                    connection.close();
                    return false;
                }

            } catch (Exception e) {
                System.out.println("Fail in database connection");
                return false;
            }
        }

        public Usuario validateAdmin(String username, String password) {
            String SQL_SELECT = "SELECT NAME, PASSWORD ,ADMIN  FROM ACCOUNT WHERE NAME = ? AND PASSWORD = ? AND ADMIN = TRUE ";

            try {
                Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");
                System.out.println("Success in database connection");

                PreparedStatement selectStatement = connection.prepareStatement(SQL_SELECT);
                selectStatement.setString(1, username);
                selectStatement.setString(2, password);
                ResultSet resultSet = selectStatement.executeQuery();

                if (resultSet.next()) {
                    // Existe pelo menos um registro com o usuário e é um administrador
                    Usuario usuario = new Usuario();
                    usuario.setUsername(resultSet.getString("NAME"));
                    usuario.setUsername(resultSet.getString("PASSWORD"));
                    usuario.setAdmin(resultSet.getBoolean("ADMIN"));

                    connection.close();
                    return usuario;
                } else {
                    // Não é um administrador ou não foi encontrado
                    System.out.println("Invalid user credentials or user is not an admin.");
                    connection.close();
                    return null;
                }
            } catch (Exception e) {
                System.out.println("Fail in database connection");
                return null;
            }
        }

    }
