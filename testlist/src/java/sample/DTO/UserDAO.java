/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.DTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.DBUtils.DBUtils;

/**
 *
 * @author hieu09097248
 */
public class UserDAO {

    private static String BOOKING_LIST = "SELECT bookingID, studioID, slotID, currentDate, bookingDate, status FROM [Booking]";
    private static String DELETE = "DELETE FROM [Booking_StudioService] WHERE [bookingID]=?; DELETE FROM [Booking] WHERE [bookingID]=?;";
    private static String STUDIO_NAME = "SELECT B.[bookingID], B.[userID], B.[slotID], B.[bookingDate], B.[currentDate], B.[status], B.[description], S.[studioName] FROM [Booking] B INNER JOIN [Studio] S ON B.[studioID] = S.[studioID] WHERE B.[bookingID]=?;";

    public List<DTO> getListBooking() throws SQLException {
        List<DTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.makeConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(BOOKING_LIST);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String bookingID = rs.getString("bookingID");
                    String studioID = rs.getString("studioID");
                    String slotID = rs.getString("slotID");
                    String currentDate = rs.getString("currentDate");
                    String bookingDate = rs.getString("bookingDate");
                    String status = rs.getString("status");
                    list.add(new DTO(bookingID, studioID, slotID, currentDate, bookingDate, status));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

    public boolean delete(String bookingID) throws SQLException {
        boolean checkDelete = false;
        Connection conn = null;
        PreparedStatement ptm = null;

        try {
            conn = DBUtils.makeConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(DELETE);
                ptm.setString(1, bookingID);
                ptm.setString(2, bookingID);
                checkDelete = ptm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return checkDelete;
    }

    public List<DetailDTO> getStudioName(String bookingId) throws SQLException, Exception {
        List<DetailDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.makeConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(STUDIO_NAME);
                ptm.setString(1, bookingId);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String bookingID = rs.getString("bookingID");
                    String studioName = rs.getString("studioName");
                    String slotID = rs.getString("slotID");
                    String currentDate = rs.getString("currentDate");
                    String bookingDate = rs.getString("bookingDate");
                    String status = rs.getString("status");
                    String description = rs.getString("description");
                    list.add(new DetailDTO(bookingID, studioName, slotID, currentDate, bookingDate, status, description));
                }
            }
        } catch (SQLException e) { // Catch SQLException
            e.printStackTrace();
            return list; // Return an empty list or handle the exception appropriately
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list; // Return the list at the end of the method
    }

}
