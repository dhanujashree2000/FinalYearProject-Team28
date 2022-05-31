/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
import java.io.*;
import java.sql.*;
 
public class SimpleCsv2DbInserter {
 
    public static void main(String[] args) {
        String jdbcURL = "jdbc:mysql://localhost:3306/city";
        String username = "root";
        String password = "root";
 
        String csvFilePath = "D:\\FinalDataSet1.csv";
 
        int batchSize = 20;
 
        Connection connection = null;
 
        try {
 
            connection = DriverManager.getConnection(jdbcURL, username, password);
            connection.setAutoCommit(false);
 
            String sql = "INSERT INTO c_city (uid, place, city, type, category,address,lat,log,description,rate) VALUES (?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
             BufferedReader lineReader = new BufferedReader(new FileReader(csvFilePath));
            String lineText = null;
             int count = 0;
             lineReader.readLine(); // skip header line
             while ((lineText = lineReader.readLine()) != null) {
                String[] data = lineText.split(",");
                String uid = data[0];
                String place = data[1];
                String city = data[2];
                String type = data[3];
                String category= data[4];
                String address = data[5];
                String lat = data[6];
                String log = data[7];
                String description=data[8];
                String rate=data.length == 10 ? data[9] : "";
                statement.setString(1, uid);
                statement.setString(2, place);
                statement.setString(3, city);
                statement.setString(4, type);
                statement.setString(5, category);
                statement.setString(6, address);
                statement.setString(7, lat);
                statement.setString(8, log);
                statement.setString(9, description);
                statement.setString(10, rate);
            
 
                if (count % batchSize == 0) {
                    statement.executeUpdate();
                }
            }
 
            lineReader.close();
 
            // execute the remaining queries
            statement.executeBatch();
 
            connection.commit();
            connection.close();
 
        } catch (IOException ex) {
            System.err.println(ex);
        } catch (SQLException ex) {
            ex.printStackTrace();
 
            try {
                connection.rollback();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
 
    }
}
