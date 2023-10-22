/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTO.District;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import mylib.DBUtils;
/**
 *
 * @author ACER
 */
public class DistrictDAO {
    public static ArrayList<District> getAllDistrictByCityId(String cityId) throws Exception{
        ArrayList<District> list = new ArrayList<>();
        
        Connection cn = DBUtils.makeConnection();
        if(cn!=null){
            String sql = "Select [districtID], [cityID], [districtName] from [dbo].[District] where [cityID] = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, cityId);
            ResultSet rs = pst.executeQuery();
            if(rs!=null){
                while(rs.next()){
                    String id = rs.getString("districtID");
                    String thisCityId = rs.getString("cityID");
                    String name = rs.getNString("districtName");
                    list.add(new District(id, thisCityId, name));
                }
            }
            cn.close();
        }
        return list;
    }
}
