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
                   + ",[email],[cityID],[districtID],[status],[studioID] from [dbo].[User] where [userAcccount] = ?";
           PreparedStatement pst = cn.prepareStatement(sql);
           pst.setString(1, userAccount);
           ResultSet rs = pst.executeQuery();
           if(rs!=null){
               while(rs.next()){
                   String id = rs.getString("userID");
                   String thisUserAccount = rs.getString("userAcccount");
                   String password = rs.getString("password");
                   String roleId = rs.getString("roleID");
                   String fullname = rs.getNString("fullname");
                   String birthday = rs.getString("birthday");
                   String gender = rs.getString("gender");
                   String phoneNumber = rs.getString("phoneNumber");
                   String email = rs.getString("email");
                   String city = rs.getString("cityID");
                   String district = rs.getString("districtID");
                   boolean thisStatus = rs.getBoolean("status");
                   String studioId = rs.getString("studioID");
                   us = new User(id, thisUserAccount, password, roleId, fullname, birthday, gender, phoneNumber, email, city, district, thisStatus, studioId);
               }
           }
           cn.close();
       }
       return us;
    }
    
    public static User getUserByUserId(String userId) throws Exception{
        User us = new User();
        Connection cn = DBUtils.makeConnection();
       if(cn!=null){
           String sql = "select [userID],[userAcccount],[password],[roleID],[fullname],[birthday],[gender],[phoneNumber]"
                   + ",[email],[city],[district],[status],[studioID] from [dbo].[User] where [userID] = ?";
           PreparedStatement pst = cn.prepareStatement(sql);
           pst.setString(1, userId);
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
                   boolean status = rs.getBoolean("status");
                   String studioId = rs.getString("studioID");
                   us = new User(id, thisUserAccount, password, roleId, fullname, birthday, gender, phoneNumber, email, city, district, status, studioId);
               }
           }
           cn.close();
       }
        return us;
    }
    
    public static User createUser(String Id, String userAccount, String password, String roleId, String fullname, String birthday, String gender, String phoneNumber, String email, String city, String district, boolean status,String studioId) throws Exception{
        User us = new User(Id, userAccount, password, roleId, fullname, birthday, gender, phoneNumber, email, city, district, status, studioId);
        Connection cn = DBUtils.makeConnection();
        if(cn!=null){
            String sql = "Insert Into [dbo].[User]([userID],[userAcccount],[password],[roleID],[fullname],[birthday],[gender],[phoneNumber],[email],[city],[district],[status],[studioID]) " +
                        "Values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, Id);
            pst.setString(2, userAccount);
            pst.setString(3, password);
            pst.setString(4, roleId);
            pst.setString(5, fullname);
            pst.setString(6, birthday);
            pst.setString(7, gender);
            pst.setString(8, phoneNumber);
            pst.setString(9, email);
            pst.setString(10, city);
            pst.setString(11, district);
            pst.setBoolean(12, true);
            pst.setString(13, studioId);
            pst.executeUpdate();
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
