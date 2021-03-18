/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.baida.dp2021project;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author danila
 */
public class Postrgress {
    int id;
    private Logger logger;
    private Statement statement;
    private Connection conn;
    public Postrgress() {
        id = 1;
        try {
            Class.forName("org.postgresql.Driver");
            this.conn = DriverManager.getConnection("jdbc:postgresql://obrii.org:5432/db2021mit21s2", "s2", "4359");
            this.conn.setAutoCommit(false);
            this.statement = this.conn.createStatement();
        } 
        catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName()+": "+e.getMessage());
            System.exit(0);
        }
        sql("CREATE TABLE IF NOT EXISTS customers ("
                        + "id integer primary key not null, "
                        + "name text not null, "
                        + "age integer not null "
                        + ");");
  
    }
   
    public void sql(String stok){
        try{
            statement.executeUpdate(stok);
            conn.commit();
        }
        catch(SQLException e){
             logger.log(Level.WARNING, null, e);
        }
    }
    
    public List<Data> readData() {
        try {
            ResultSet result = this.statement.executeQuery("SELECT * FROM customers");
            List<Data> data = new ArrayList<>();

            while (result.next()) {
                data.add(new Data(
                        result.getInt("id"),
                        result.getString("name"),
                        result.getInt("age")
                ));
            }

            return data;
        } 
        catch (SQLException e) {
            this.logger.log(Level.WARNING, e.toString());
            return new ArrayList<>();
        }
        
    }

    public void createData(Data data) {
        List<Data> datasize = this.readData();
        if(datasize.size()==0){
            id=1;
        }
        data.setId(this.id);
        id=id+1;
        sql(String.format("INSERT INTO customers (id, name, age) VALUES (%d, '%s', %d);",
                data.getId(), data.getName(), data.getAge()));
    }

    public void deleteData(int id) {        
        sql("DELETE FROM customers WHERE id=" + id);
    }
    
    public void updateData(int id, Data data) {  
        sql(String.format("UPDATE customers "
                        + "SET name='" + data.getName() + "' , "
                        + "age=" + data.getAge()
                + "WHERE id="+id)
        );
    }
    
    public List<Data> searchData(String phrase) {
        List<Data> newData = new ArrayList<>();
        for (Data d : this.readData()) {
            if(d.getName().contains(phrase)){
                newData.add(d);}
        }
            return newData;
    }
}
