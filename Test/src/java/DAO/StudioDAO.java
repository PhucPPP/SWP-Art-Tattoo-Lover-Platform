/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTO.Studio;
import mylib.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ACER
 */
public class StudioDAO {

    public static void createStudio(String studioId, String managerId, String StudioName,
            String studioAddress, String cityId, String districtId, String phoneNumber,
            String email, boolean status, float rating, String timeStart, String timeEnd,
            String description, int availablePerSlot) throws Exception {
        Connection cn = DBUtils.makeConnection();
        if (cn != null) {
            String sql = "Insert into [dbo].[Studio]([studioID],[managerID],[studioName],[studioAddress],"
                    + "[cityID],[districtID],[studioPhoneNumber],[studioEmail],[status],[rating],[timeStart],"
                    + "[timeEnd],[description],[availablePerSlot]) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, studioAddress);
            pst.setString(2, managerId);
            pst.setString(3, StudioName);
            pst.setString(4, studioAddress);
            pst.setString(5, cityId);
            pst.setString(6, districtId);
            pst.setString(7, phoneNumber);
            pst.setString(8, email);
            int thisStatus;
            if (status) {
                thisStatus = 1;
            } else {
                thisStatus = 0;
            }
            pst.setInt(9, thisStatus);
            pst.setFloat(10, rating);
            pst.setString(11, timeStart);
            pst.setString(12, timeEnd);
            pst.setInt(13, availablePerSlot);
            pst.executeUpdate();
            cn.close();
        }
    }

    public static Studio getStudioByStuDioId(String studioId) throws Exception {
        Studio stu = new Studio();

        Connection cn = DBUtils.makeConnection();
        if (cn != null) {
            String sql = "Select [studioID],[managerID],[studioName],[studioAddress],"
                    + "[cityID],[districtID],[studioPhoneNumber],[studioEmail],[status],"
                    + "[rating],[timeStart],[timeEnd],[description],[availablePerSlot]"
                    + " from [dbo].[Studio] where [studioID] = ?";
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setString(1, studioId);
            ResultSet rs = pst.executeQuery();

            if (rs != null) {
                while (rs.next()) {
                    String thisStudioId = rs.getString("studioID");
                    String managerId = rs.getString("managerID");
                    String studioName = rs.getNString("studioName");
                    String studioAddress = rs.getNString("studioAddress");
                    String ciryId = rs.getString("cityID");
                    String districtId = rs.getString("districtID");
                    String phoneNumber = rs.getString("studioPhoneNumber");
                    String email = rs.getString("studioEmail");
                    int status = rs.getInt("status");
                    boolean thisStatus = false;
                    if (status == 1) {
                        thisStatus = true;
                    }
                    float rating = rs.getFloat("rating");
                    String timeStart = rs.getString("timeStart");
                    String timeEnd = rs.getString("timeEnd");
                    String description = rs.getString("description");
                    int availablePerSlot = rs.getInt("availablePerSlot");

                    stu = new Studio(thisStudioId, managerId, studioName, studioAddress, ciryId, districtId, phoneNumber, email, thisStatus, rating, timeStart, timeEnd, description, availablePerSlot);

                }
            }
            cn.close();
        }
        return stu;
    }
}
