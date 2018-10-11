package com.cling;

import java.sql.*;

public class ReadData {
    public static void main(String[] arags) {
        try {
            Class.forName("org.apache.ignite.IgniteJdbcThinDriver");
            Connection connection = DriverManager.getConnection("jdbc:ignite:thin://127.0.0.1");
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT p.name, c.name" +
                    " FROM Person p, City c " +
                    " WHERE p.city_id = c.id");
            while (rs.next()) {
                System.out.println(rs.getString(1) + "," + rs.getString(2));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
