package br.com.primepc.servlet.dao;

import br.com.primepc.servlet.model.Computer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ComputerDao {
    public void createComputer(Computer computer) {

        String SQL = "INSERT INTO COMPUTER (NAME, CPU, GPU, RAM, TIPO, USO, DESEMPENHO) VALUES (?,?,?,?,?,?,?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa","sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, computer.getName());
            preparedStatement.setString(2, computer.getCpu());
            preparedStatement.setString(3, computer.getGpu());
            preparedStatement.setString(4, computer.getRam());
            preparedStatement.setString(5, computer.getTipo());
            preparedStatement.setString(6, computer.getUso());
            preparedStatement.setString(7, computer.getDesempenho());

            preparedStatement.execute();



            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }

    public List<Computer> findAllComputers() {

        String SQL = "SELECT * FROM COMPUTER";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Computer> computers = new ArrayList<>();

            while (resultSet.next()) {

                String computerId = resultSet.getString("id");
                String computerName = resultSet.getString("name");
                String computerCpu = resultSet.getString("cpu");
                String computerGpu = resultSet.getString("gpu");
                String computerRam = resultSet.getString("ram");
                String computerTipo = resultSet.getString("tipo");
                String computerUso = resultSet.getString("uso");
                String computerDesempenho = resultSet.getString("desempenho");

                Computer computer = new Computer(computerId, computerName, computerCpu, computerGpu, computerRam, computerTipo, computerUso, computerDesempenho);
                computers.add(computer);

            }

            System.out.println("success in select * computer");

            connection.close();

            return computers;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }

    }

    public List<Computer> findTypeComputer(String tipo, String uso) {

        String SQL = "SELECT * FROM COMPUTER where tipo = ? and uso = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Computer> computers = new ArrayList<>();

            while (resultSet.next()) {

                String computerId = resultSet.getString("id");
                String computerName = resultSet.getString("name");
                String computerCpu = resultSet.getString("cpu");
                String computerGpu = resultSet.getString("gpu");
                String computerRam = resultSet.getString("ram");
                String computerTipo = resultSet.getString("tipo");
                String computerUso = resultSet.getString("uso");
                String computerDesempenho = resultSet.getString("desempenho");


                Computer computer = new Computer(computerId, computerName, computerCpu, computerGpu, computerRam, computerTipo, computerUso, computerDesempenho);

                computers.add(computer);

            }

            System.out.println("success in select * computer");

            connection.close();

            return computers;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }
    }

    public List<Computer> findByName(String name) {

        String SQL = "SELECT * FROM COMPUTER where uso LIKE ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, "%" + name + "%");
            ResultSet resultSet = preparedStatement.executeQuery();

            List<Computer> computers = new ArrayList<>();

            while (resultSet.next()) {

                String computerId = resultSet.getString("id");
                String computerName = resultSet.getString("name");
                String computerCpu = resultSet.getString("cpu");
                String computerGpu = resultSet.getString("gpu");
                String computerRam = resultSet.getString("ram");
                String computerTipo = resultSet.getString("tipo");
                String computerUso = resultSet.getString("uso");
                String computerDesempenho = resultSet.getString("desempenho");

                Computer computer = new Computer(computerId, computerName, computerCpu, computerGpu, computerRam, computerTipo, computerUso, computerDesempenho);

                computers.add(computer);

            }

            System.out.println("success in select * computer");

            connection.close();

            return computers;

        } catch (Exception e) {

            System.out.println(e);
            System.out.println("fail in database connection");

            return Collections.emptyList();

        }

    }

    public void deleteComputerById(String computerId) {

        String SQL = "DELETE COMPUTER WHERE ID = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, computerId);
            preparedStatement.execute();

            System.out.println("success on delete computer with id: " + computerId);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }

    public void updateComputer(Computer computer) {

        String SQL = "UPDATE COMPUTER SET NAME = ? WHERE ID = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa","sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, computer.getName());
            preparedStatement.setString(2, computer.getId());
            preparedStatement.execute();

            System.out.println("success in update computer");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }

    }




}
