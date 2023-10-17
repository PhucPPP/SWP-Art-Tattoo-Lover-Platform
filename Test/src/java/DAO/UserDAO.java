/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTO.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import mylib.DBUtils;

/**
 *
 * @author ACER
 */
public class UserDAO {
    public static User getUserByUserAccount(String userAccount) throws Exception{
       User us = new User();
       Connection cn = DBUtils.makeConnection();
       if(cn!=null){
           String sql = "select [userID],[userAcccount],[password],[roleID],[fullname],[birthday],[gender],[phoneNumber]"
                   + ",[email],[city],[district],[status],[studioID] from [dbo].[User] where [userAcccount] = ?";
           PreparedStatement pst = cn.prepareStatement(sql);
           pst.setString(1, userAccount);
           ResultSet rs = pst.executeQuery();
           if(rs!=null){
               while(rs.next()){
                   String id = rs.getString("userID");
                   String thisUserAccount = rs.getString("userAcccount");
                   String password = rs.getString("password");
                   String roleId = rs.getString("roleID");
                   String fullname = rs.getString("fullname");
                   String birthday = rs.getString("birthday");
                   String gender = rs.getString("gender");
                   String phoneNumber = rs.getString("phoneNumber");
                   String email = rs.getString("email");
                   String city = rs.getString("city");
                   String district = rs.getString("district");
                   byte status = rs.getByte("status");
                   boolean thisStatus = true;
                   if(status==1){
                       thisStatus = true;
                   }
                   String studioId = rs.getString("studioID");
                   us = new User(id, thisUserAccount, password, roleId, fullname, birthday, gender, phoneNumber, email, city, district, thisStatus, studioId);
               }
           }
           cn.close();
       }
       return us;
    }
    
    public static void main(String[] args) throws Exception {
        User us = getUserByUserAccount("trang8795");
        if(us!=null){
            System.out.println("OK");
        }
    }
}
