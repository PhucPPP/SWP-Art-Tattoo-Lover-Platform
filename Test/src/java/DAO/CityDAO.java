/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTO.City;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import mylib.DBUtils;

/**
 *
 * @author ACER
 */
public class CityDAO {
    public static ArrayList<City> getAllCity() throws Exception{
        ArrayList<City> list = new ArrayList<>();
        
        Connection cn = DBUtils.makeConnection();
        if(cn!=null){
            String sql = "Select [cityID], [cityName] from [dbo].[City]";
            PreparedStatement pst = cn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            if(rs!=null){
                while(rs.next()){
                    String id = rs.getString("cityID");
                    String name = rs.getNString("cityName");
                    list.add(new City(id, name));
                }
            }
            cn.close();
        }
        
        return list;
    }
    
    public static String getCityNameById(String id) throws Exception{
        String name ="";
        Connection cn = DBUtils.makeConnection();
        
        if(cn!=null){
            String sql = "Select [cityName] from [dbo].[City] where [cityID] = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, id);
            ResultSet rs = pst.executeQuery();
            if(rs!=null){
                while(rs.next()){
                    name = rs.getString("cityName");
                }
            }
        }
        
        return name;
    }
}
