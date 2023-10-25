/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.BookingDTO;
import DTO.BookingDetailDTO;
import DTO.StudioServiceDTO;
import Utils.DBUtils;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 *
 * @author ASUS
 */
public class BookingDAO {

    private static final String GET_SERVICE_BOOKING = "SELECT distinct ssv.studioServiceID, "
            + "s.serviceName, sd.serviceDetailName, ss.serviceSizeName, price, ssv.status "
            + "FROM Studio_Service ssv, Service s, Service_Detail sd, Service_Size ss "
            + "WHERE studioID = ? "
            + "AND ssv.serviceID = ? "
            + "AND ssv.serviceDetailID = ? "
            + "AND ssv.serviceSizeID= ? "
            + "AND ssv.serviceID = s.serviceID "
            + "AND ssv.serviceDetailID = sd.serviceDetailID "
            + "AND ssv.serviceSizeID = ss.serviceSizeID";

    private static final String CHECK_SLOT_AVAILABLE = "SELECT sl.slotID, sl.studioID, sl.timeStart, sl.timeEnd "
            + "FROM Slot sl, Studio s "
            + "WHERE sl.studioID= ? "
            + "AND slotID = ? "
            + "AND sl.studioID = s.studioID "
            + "AND s.availablePerSlot > ( "
            + "SELECT count(bookingID) "
            + "FROM Booking "
            + "WHERE bookingDate = ? "
            + "AND studioID = ? "
            + "AND slotID = ? )";

    private static final String CHECK_BOOKING_ID = "SELECT bookingID FROM Booking";
    private static final String INSERT_BOOKING = "INSERT INTO Booking "
            + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String INSERT_BOOKING_SERVICE = "INSERT INTO Booking_StudioService "
            + "VALUES (?, ?, ?, ?)";

    private static String BOOKING_LIST = "SELECT bookingID, b.studioID, "
            + "s.studioName, b.slotID, sl.timeStart, sl.timeEnd, b.totalPrice, b.description, "
            + "currentDate, bookingDate, b.rating, commentation, b.status "
            + "FROM Booking b, Slot sl, Studio s "
            + "WHERE userID=? "
            + "AND b.slotID = sl.slotID "
            + "AND b.studioID = s.studioID";
    private static String GET_BOOKING = "SELECT bookingID, b.studioID, "
            + "s.studioName, b.slotID, sl.timeStart, sl.timeEnd, b.totalPrice, b.description, "
            + "currentDate, bookingDate, b.rating, commentation, b.status "
            + "FROM Booking b, Slot sl, Studio s "
            + "WHERE bookingID=? "
            + "AND b.slotID = sl.slotID "
            + "AND b.studioID = s.studioID";
    private static String GET_BOOKING_DETAIL_INPROGRESS = "SELECT distinct s.serviceName, "
            + "ss.serviceSizeName, sd.serviceDetailName, ssv.price, bs.amount "
            + "FROM  Booking_StudioService bs, Studio_Service ssv, [User] u, "
            + "Service s, Service_Detail sd, Service_Size ss "
            + "WHERE bs.bookingID = ? "
            + "AND bs.studioServiceID = ssv.studioServiceID "
            + "AND ssv.serviceID = s.serviceID "
            + "AND ssv.serviceDetailID = sd.serviceDetailID "
            + "AND ssv.serviceSizeID = ss.serviceSizeID ";

    public StudioServiceDTO getServiceBooking(String studioID, String serviceID, String serviceDetailID, String serviceSizeID, String sAmount) throws SQLException {
        StudioServiceDTO stuService = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_SERVICE_BOOKING);
                ptm.setString(1, studioID);
                ptm.setString(2, serviceID);
                ptm.setString(3, serviceDetailID);
                ptm.setString(4, serviceSizeID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String studioServiceID = rs.getString("studioServiceID");
                    String serviceName = rs.getString("serviceName");
                    String serviceDetailName = rs.getString("serviceDetailName");
                    String serviceSizeName = rs.getString("serviceSizeName");
                    int price = rs.getInt("price");
                    int amount = Integer.parseInt(sAmount);
                    boolean status = rs.getBoolean("status");
                    if (status == true) {
                        stuService = (new StudioServiceDTO(studioServiceID, studioID,
                                serviceID, serviceName, serviceDetailID,
                                serviceDetailName, serviceSizeID, serviceSizeName,
                                null, price, amount, status));
                    }
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

            return stuService;
        }
    }

    /*check xem trong ngày đó slot đó số đơn đặt hàng có quá số available per slot của studio hay chưa*/
    public boolean checkSlotInDay(String studioID, String slotID, String bookDate) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_SLOT_AVAILABLE);
                ptm.setString(1, studioID);
                ptm.setString(2, slotID);
                ptm.setString(3, bookDate);
                ptm.setString(4, studioID);
                ptm.setString(5, slotID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    check = true;
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

            return check;
        }
    }
    public static String bookingID = "";

    public static boolean insertBooking(String userID, String studioID, String slotID,
            int totalPrice, String description, String currentDate, String bookingDate) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                Random rd = new Random();

                boolean bookingIDDuplicated;
                do {
                    bookingIDDuplicated = false;
                    int number_booking = rd.nextInt(1000);
                    bookingID = "B" + number_booking;
                    ptm = conn.prepareStatement(CHECK_BOOKING_ID);
                    rs = ptm.executeQuery();
                    while (rs.next()) {
                        String bookingID_check = rs.getString("bookingID");
                        if (bookingID.equals(bookingID_check)) {
                            bookingIDDuplicated = true;
                            break;
                        }
                    }
                } while (bookingIDDuplicated == true);

                ptm = conn.prepareStatement(INSERT_BOOKING);
                ptm.setString(1, bookingID);
                ptm.setString(2, userID);
                ptm.setString(3, studioID);
                ptm.setString(4, null);
                ptm.setString(5, slotID);
                ptm.setInt(6, totalPrice);
                ptm.setString(7, description);
                ptm.setString(8, currentDate);
                ptm.setString(9, bookingDate);
                ptm.setInt(10, 0);
                ptm.setString(11, null);
                ptm.setString(12, "Đang xử lý");
                check = ptm.executeUpdate() > 0 ? true : false;
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
        return check;
    }

    public static String getBookingID() {
        return bookingID;
    }

    public boolean insertBookingService(String bookingID, String studioServiceID, int amount) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(INSERT_BOOKING_SERVICE);
                ptm.setString(1, bookingID);
                ptm.setString(2, studioServiceID);
                ptm.setString(3, null);
                ptm.setInt(4, amount);
                check = ptm.executeUpdate() > 0 ? true : false;
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
        return check;
    }

    public List<BookingDTO> getListBookingUser(String userID) throws SQLException {
        List<BookingDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(BOOKING_LIST);
                ptm.setString(1, userID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String bookingID = rs.getString("bookingID");
                    String studioID = rs.getString("studioID");
                    String studioName = rs.getString("studioName");
                    String slotID = rs.getString("slotID");

                    DateFormat format = new SimpleDateFormat("H:mm");
                    Time ftimeStart = rs.getTime("timeStart");
                    String timeStart = format.format(ftimeStart);

                    Time ftimeEnd = rs.getTime("timeEnd");
                    String timeEnd = format.format(ftimeEnd);

                    int totalPrice = rs.getInt("totalPrice");
                    String description = rs.getString("description");
                    
                    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
                    Date fCurrentDate = rs.getDate("currentDate");
                    String currentDate = formatter.format(fCurrentDate);
                    
                    Date fBookingDate = rs.getDate("bookingDate");
                    String bookingDate = formatter.format(fBookingDate);
                    
                    int rating = rs.getInt("rating");
                    String commentation = rs.getString("commentation");
                    String status = rs.getString("status");
                    list.add(new BookingDTO(bookingID, userID, null, studioID, studioName, null, slotID, timeStart, timeEnd, totalPrice, description, currentDate, bookingDate, rating, commentation, status));
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

    /*lay 1 booking bằng bookingID*/
    public BookingDTO getBooking(String bookingID) throws SQLException {
        BookingDTO booking = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_BOOKING);
                ptm.setString(1, bookingID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String studioID = rs.getString("studioID");
                    String studioName = rs.getString("studioName");
                    String slotID = rs.getString("slotID");

                    DateFormat format = new SimpleDateFormat("H:mm");
                    Time ftimeStart = rs.getTime("timeStart");
                    String timeStart = format.format(ftimeStart);

                    Time ftimeEnd = rs.getTime("timeEnd");
                    String timeEnd = format.format(ftimeEnd);

                    int totalPrice = rs.getInt("totalPrice");
                    String description = rs.getString("description");

                    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
                    Date fCurrentDate = rs.getDate("currentDate");
                    String currentDate = formatter.format(fCurrentDate);
                    
                    Date fBookingDate = rs.getDate("bookingDate");
                    String bookingDate = formatter.format(fBookingDate);
                    
                    int rating = rs.getInt("rating");
                    String commentation = rs.getString("commentation");
                    String status = rs.getString("status");
                    booking = new BookingDTO(bookingID, null, null, studioID, studioName, null, slotID, timeStart, timeEnd, totalPrice, description, currentDate, bookingDate, rating, commentation, status);
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
        return booking;
    }
    
    public List<BookingDetailDTO> getListBookingDetailInProgess(String bookingID) throws SQLException {
        List<BookingDetailDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_BOOKING_DETAIL_INPROGRESS);
                ptm.setString(1, bookingID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    
                    String serviceName = rs.getString("serviceName");
                    String serviceDeatailName = rs.getString("serviceDetailName");
                    String serviceSizeName = rs.getString("serviceSizeName");
                    int price = rs.getInt("price");
                    int amount = rs.getInt("amount");
                    list.add(new BookingDetailDTO(bookingID, null, null, serviceName, null, serviceDeatailName, null, serviceSizeName, price, amount, null, null));
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
}
