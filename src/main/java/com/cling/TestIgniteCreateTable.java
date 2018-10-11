package com.cling;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author dayday
 */
public class TestIgniteCreateTable {

    public static void main(String[] args) {
        // create table City (id long primary key, name varchar) with "template=replicated"
        // create table Person (id LONG, name VARCHAR, city_id LONG, PRIMARY KEY (id, city_id)) with "backups=1, affinitykey=city_id"
        // create INDEX idx_city_name ON City(name)
        // create INDEX idx_persion_name ON Person (name)
        try {
            Class.forName("org.apache.ignite.IgniteJdbcThinDriver");
            Connection connection = DriverManager.getConnection("jdbc:ignite:thin://127.0.0.1");
            Statement stmt = connection.createStatement();
            stmt.executeUpdate("CREATE TABLE City (" +
                    " id LONG PRIMARY KEY, name VARCHAR) " +
                    " WITH \"template=replicated\"");

            // Create table based on PARTITIONED template with one backup.
            stmt.executeUpdate("CREATE TABLE Person (" +
                    " id LONG, name VARCHAR, city_id LONG, " +
                    " PRIMARY KEY (id, city_id)) " +
                    " WITH \"backups=1, affinityKey=city_id\"");

            // Create an index on the City table.
            stmt.executeUpdate("CREATE INDEX idx_city_name ON City (name)");

            // Create an index on the Person table.
            stmt.executeUpdate("CREATE INDEX idx_person_name ON Person (name)");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
