/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.utils;

import java.sql.SQLException;
import static sample.utils.DBUtils.getConnect;

/**
 *
 * @author PC
 */
public class test {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        getConnect();
    }
    
}
