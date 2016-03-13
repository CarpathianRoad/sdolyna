package ua.aits.sdolyna.functions;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author kiwi
 */
public class DB {

  private static Connection con;

    public DB() {

    }


    public static Connection loadDriver() throws SQLException {

        try {

            Class.forName(Constants.DB_DRIVER);

        } catch (ClassNotFoundException ex) {

            System.out.println(ex.getMessage());

        }

        con = DriverManager.getConnection(Constants.DB_CONNECTION_STRING, Constants.DB_USER, Constants.DB_PASSWORD);

        return con;

    }

 


    public static ResultSet getResultSet(String query) throws SQLException {
System.out.println(query);
        Connection con = loadDriver();

        ResultSet rs;

        PreparedStatement st = con.prepareStatement(query);
        rs = st.executeQuery();
 return rs;
    }

 

    public static void runQuery(String query) throws SQLException {
    System.out.println(query);
       Connection con = loadDriver();

       ResultSet rs;

        PreparedStatement st = con.prepareStatement(query);

        st.executeUpdate();
    }
    public static void closeCon() throws SQLException {
        con.close();
    }


}
