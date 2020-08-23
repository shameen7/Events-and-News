package model;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Connection {

    private static String driver = "com.mysql.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/test";
    private static String userName = "root";
    private static String password = "";

    protected java.sql.Connection connect;
    protected PreparedStatement preparedStatement;
    protected ResultSet resultSet;

    public Connection() {

        connect();
    }

    private void connect() {

        try {

            Class.forName(driver);
            connect = DriverManager.getConnection(url, userName, password);
        } catch (ClassNotFoundException exp) {

            System.out.print(exp.getLocalizedMessage());
        } catch (Exception exp) {

            System.out.print(exp.getLocalizedMessage());
        }
    }

    protected void closeConection() {

        if (connect != null) {
            try {
                
                connect.close();
            } catch (Exception exp) {
                
                System.out.print(exp.getLocalizedMessage());
            }
        }
        if (preparedStatement != null) {
            try {
                
                preparedStatement.close();
            } catch (Exception exp) {
                
                System.out.print(exp.getLocalizedMessage());
            }
        }
        if (resultSet != null) {
            try {
                
                resultSet.close();
            } catch (Exception exp) {
                
                System.out.print(exp.getLocalizedMessage());
            }
        }
    }
    
    static public String Hello(){
        return "Func";
    }

}
