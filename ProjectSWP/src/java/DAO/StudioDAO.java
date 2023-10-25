/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.ImgDTO;
import DTO.ServiceSizeDTO;
import DTO.SlotDTO;
import DTO.StudioDTO;
import DTO.StudioServiceDTO;
import Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class StudioDAO {

    private static final String GET_STUDIO_INFOR = "SELECT managerID, studioName, "
            + "studioAddress, c.cityName, d.districtName, studioPhoneNumber, "
            + "studioEmail, status, rating, timeStart, timeEnd, description, "
            + "availablePerSlot "
            + "FROM Studio s, City c, District d "
            + "WHERE s.cityID = c.cityID "
            + "AND s.districtID = d.districtID "
            + "AND studioID= ?";

    private static final String GET_STUDIO_SERVICE = "SELECT distinct ss.serviceID, "
            + "s.serviceName, ss.status "
            + "FROM Studio_Service ss, Service s "
            + "WHERE ss.studioID=? "
            + "AND ss.serviceID = s.serviceID";

    private static final String GET_STUDIO_SERVICE_DETAIL = "SELECT distinct ss.serviceDetailID, sd.serviceDetailName, ss.status "
            + "FROM Studio_Service ss, Service_Detail sd "
            + "WHERE ss.studioID=? "
            + "AND ss.serviceDetailID = sd.serviceDetailID ";

    private static final String GET_MIN_PRICE = "SELECT MIN(price) as minPrice "
            + "FROM Studio_Service ss "
            + "WHERE ss.studioID =? "
            + "GROUP BY ss.studioID";

    private static final String GET_MAX_PRICE = "SELECT MAX(price) as maxPrice "
            + "FROM Studio_Service ss "
            + "WHERE ss.studioID =? "
            + "GROUP BY ss.studioID";

    private static final String GET_AVATAR = "SELECT * "
            + "FROM Image "
            + "WHERE role = 'AVA' "
            + "AND studioID=?";

    private static final String GET_SERVICE_IMG = "SELECT * "
            + "FROM Image "
            + "WHERE role = 'SV' "
            + "AND studioID=?";

    private static final String GET_STUDIO_SERVICE_DETAIL_NORMAL = "SELECT distinct ss.serviceID, "
            + "s.serviceName, ss.serviceDetailID, sd.serviceDetailName, ss.status "
            + "FROM Studio_Service ss, Service s, Service_Detail sd WHERE ss.studioID=? "
            + "AND ss.serviceID = 'SV001' "
            + "AND ss.serviceID = s.serviceID "
            + "AND ss.serviceDetailID = sd.serviceDetailID";

    private static final String GET_STUDIO_SERVICE_DETAIL_COLOR = "SELECT distinct ss.serviceID, "
            + "s.serviceName, ss.serviceDetailID, sd.serviceDetailName, ss.status "
            + "FROM Studio_Service ss, Service s, Service_Detail sd WHERE ss.studioID=? "
            + "AND ss.serviceID = 'SV002' "
            + "AND ss.serviceID = s.serviceID "
            + "AND ss.serviceDetailID = sd.serviceDetailID";

    private static final String GET_SERVICE_SIZE = "SELECT * FROM Service_Size";

    private static final String GET_STUDIO_SLOT = "SELECT * FROM Slot WHERE studioID = ?";

    private static final String SEARCH_STUDIO_BYNAME = "SELECT studioID, managerID, "
            + "studioName, studioAddress, c.cityName, d.districtName, studioPhoneNumber, "
            + "studioEmail, status, rating, timeStart, timeEnd, description, availablePerSlot "
            + "FROM Studio s, City c, District d "
            + "WHERE s.cityID = c.cityID "
            + "AND s.districtID = d.districtID "
            + "AND studioName like ?";

    private static final String SEARCH_STUDIO_BY_SERVICE = "SELECT distinct s.studioID, managerID, "
            + "studioName, studioAddress, c.cityName, d.districtName, studioPhoneNumber, "
            + "studioEmail, s.status, rating, timeStart, timeEnd, description, availablePerSlot "
            + "FROM Studio s, Studio_Service ss, City c, District d "
            + "WHERE s.studioID = ss.studioID "
            + "AND s.cityID = c.cityID "
            + "AND s.districtID = d.districtID "
            + "AND ss.serviceID = ?";

    private static final String SEARCH_STUDIO_BY_SERVICE_DETAIL = "SELECT distinct s.studioID, managerID, "
            + "studioName, studioAddress, c.cityName, d.districtName, studioPhoneNumber, "
            + "studioEmail, s.status, rating, timeStart, timeEnd, description, availablePerSlot "
            + "FROM Studio s, Studio_Service ss, City c, District d "
            + "WHERE s.studioID = ss.studioID "
            + "AND s.cityID = c.cityID "
            + "AND s.districtID = d.districtID "
            + "AND ss.serviceDetailID = ?";

    /*lấy full thông tin của studio bằng studioID*/
    public StudioDTO getStuInfor(String studioID) throws SQLException {
        StudioDTO studio = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_STUDIO_INFOR);
                ptm.setString(1, studioID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String managerID = rs.getString("managerID");
                    String studioName = rs.getString("studioName");
                    String studioAddress = rs.getString("studioAddress");
                    String city = rs.getString("cityName");
                    String district = rs.getString("districtName");
                    String studioPhoneNumber = rs.getString("studioPhoneNumber");
                    String studioEmail = rs.getString("studioEmail");
                    boolean status = rs.getBoolean("status");
                    int rating = rs.getInt("rating");

                    DateFormat format = new SimpleDateFormat("H:mm");

                    Time ftimeStart = rs.getTime("timeStart");
                    String timeStart = format.format(ftimeStart);

                    Time ftimeEnd = rs.getTime("timeEnd");
                    String timeEnd = format.format(ftimeEnd);

                    String description = rs.getString("description");
                    int availablePerSlot = rs.getInt("availablePerSlot");
                    if (status == true) {
                        studio = new StudioDTO(studioID, managerID, studioName, studioAddress,
                                city, district, studioPhoneNumber, studioEmail, status, rating, timeStart, timeEnd, description, availablePerSlot);
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
        }
        return studio;
    }

    /*lấy tất cả dịch vụ mà studio có bằng studioID*/
    public List<StudioServiceDTO> getService(String studioID) throws SQLException {
        List<StudioServiceDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_STUDIO_SERVICE);
                ptm.setString(1, studioID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceID = rs.getString("serviceID");
                    String serviceName = rs.getString("serviceName");
                    boolean status = rs.getBoolean("status");
                    if (status == true) {
                        list.add(new StudioServiceDTO(null, studioID, serviceID, serviceName, null, null, null, null, null, 0, 0, status));
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
        }
        return list;
    }

    /*lấy tất cả chi tiết dịch vụ mà studio có bằng studioID*/
    public List<StudioServiceDTO> getServiceDetail(String studioID) throws SQLException {
        List<StudioServiceDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_STUDIO_SERVICE_DETAIL);
                ptm.setString(1, studioID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceDetailID = rs.getString("serviceDetailID");
                    String serviceDetailName = rs.getString("serviceDetailName");
                    boolean status = rs.getBoolean("status");
                    if (status == true) {
                        list.add(new StudioServiceDTO(null, studioID, null, null, serviceDetailID, serviceDetailName, null, null, null, 0, 0, status));
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
        }
        return list;
    }

    /*lấy giá dịch vụ thấp nhất của studio bằng studioID*/
    public List<StudioServiceDTO> getMinPrice(String studioID) throws SQLException {
        List<StudioServiceDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_MIN_PRICE);
                ptm.setString(1, studioID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int minPrice = rs.getInt("minPrice");

                    list.add(new StudioServiceDTO(null, studioID, null, null, null, null, null, null, null, minPrice, 0, true));

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

    /*lấy giá dịch vụ cao nhất của studio bằng studioID*/
    public List<StudioServiceDTO> getMaxPrice(String studioID) throws SQLException {
        List<StudioServiceDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_MAX_PRICE);
                ptm.setString(1, studioID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int maxPrice = rs.getInt("maxPrice");
                    list.add(new StudioServiceDTO(null, studioID, null, null, null, null, null, null, null, maxPrice, 0, true));

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

    /*lấy list avatar của studio bằng studioID*/
    public List<ImgDTO> getAvatarStuList(String studioID) throws SQLException {
        List<ImgDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_AVATAR);
                ptm.setString(1, studioID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String imgID = rs.getString("imgID");
                    String imgName = rs.getString("imgName");
                    String imgLink = rs.getString("imgLink");
                    String role = rs.getString("role");
                    list.add(new ImgDTO(imgID, imgName, imgLink, role, studioID, null, null, null));

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

    /*lấy list avatar của 1 studio bằng studioID*/
    public ImgDTO getAvatarStu(String studioID) throws SQLException {
        ImgDTO img = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_AVATAR);
                ptm.setString(1, studioID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String imgID = rs.getString("imgID");
                    String imgName = rs.getString("imgName");
                    String imgLink = rs.getString("imgLink");
                    String role = rs.getString("role");
                    img = new ImgDTO(imgID, imgName, imgLink, role, studioID, null, null, null);

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
        return img;
    }

    /*lấy list ảnh service của 1 studio bằng studioID*/
    public List<ImgDTO> getServiceImageList(String studioID) throws SQLException {
        List<ImgDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_SERVICE_IMG);
                ptm.setString(1, studioID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String imgID = rs.getString("imgID");
                    String imgName = rs.getString("imgName");
                    String imgLink = rs.getString("imgLink");
                    String role = rs.getString("role");
                    list.add(new ImgDTO(imgID, imgName, imgLink, role, studioID, null, null, null));
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

    /*lấy full chi tiết dịch vụ ứng với dịch vụ xăm thường mà studio có bằng studioID*/
    public List<StudioServiceDTO> getServiceDetailNormal(String studioID) throws SQLException {
        List<StudioServiceDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_STUDIO_SERVICE_DETAIL_NORMAL);
                ptm.setString(1, studioID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceID = rs.getString("serviceID");
                    String serviceName = rs.getString("serviceName");
                    String serviceDetailID = rs.getString("serviceDetailID");
                    String serviceDetailName = rs.getString("serviceDetailName");
                    boolean status = rs.getBoolean("status");
                    if (status == true) {
                        list.add(new StudioServiceDTO(null, null, serviceID, serviceName, serviceDetailID, serviceDetailName, null, null, null, 0, 0, status));
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
        }
        return list;
    }

    /*lấy full chi tiết dịch vụ ứng với dịch vụ màu thường mà studio có bằng studioID*/
    public List<StudioServiceDTO> getServiceDetailColor(String studioID) throws SQLException {
        List<StudioServiceDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_STUDIO_SERVICE_DETAIL_COLOR);
                ptm.setString(1, studioID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceID = rs.getString("serviceID");
                    String serviceName = rs.getString("serviceName");
                    String serviceDetailID = rs.getString("serviceDetailID");
                    String serviceDetailName = rs.getString("serviceDetailName");
                    boolean status = rs.getBoolean("status");
                    if (status == true) {
                        list.add(new StudioServiceDTO(null, null, serviceID, serviceName, serviceDetailID, serviceDetailName, null, null, null, 0, 0, status));
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
        }
        return list;
    }

    /*lấy full size*/
    public List<ServiceSizeDTO> getServiceSize() throws SQLException {
        List<ServiceSizeDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_SERVICE_SIZE);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceSizeID = rs.getString("serviceSizeID");
                    String systemStaffID = rs.getString("systemStaffID");
                    String serviceSizeName = rs.getString("serviceSizeName");
                    boolean status = rs.getBoolean("status");
                    if (status == true) {
                        list.add(new ServiceSizeDTO(serviceSizeID, systemStaffID, serviceSizeName, status));
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
        }
        return list;
    }

    /*lay slot làm việc của studio bàng studioID*/
    public List<SlotDTO> getSlotListStudio(String studioID) throws SQLException {
        List<SlotDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_STUDIO_SLOT);
                ptm.setString(1, studioID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String slotID = rs.getString("slotID");
                    SimpleDateFormat formatter = new SimpleDateFormat("HH:mm");
                    String timeStart =  formatter.format(rs.getTime("timeStart"));
                    String timeEnd =  formatter.format(rs.getTime("timeEnd"));
                    list.add(new SlotDTO(slotID, studioID, timeStart, timeEnd));
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

    /*lấy danh sách studio chứa ký tự search*/
    public List<StudioDTO> getListStudio(String search) throws SQLException {
        List<StudioDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SEARCH_STUDIO_BYNAME);
                ptm.setString(1, "%" + search + "%");
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String studioID = rs.getString("studioID");
                    String managerID = rs.getString("managerID");
                    String studioName = rs.getString("studioName");
                    String studioAddress = rs.getString("studioAddress");
                    String city = rs.getString("cityName");
                    String district = rs.getString("districtName");
                    String studioPhoneNumber = rs.getString("studioPhoneNumber");
                    String studioEmail = rs.getString("studioEmail");
                    boolean status = rs.getBoolean("status");
                    int rating = rs.getInt("rating");

                    DateFormat format = new SimpleDateFormat("H:mm");

                    Time ftimeStart = rs.getTime("timeStart");
                    String timeStart = format.format(ftimeStart);

                    Time ftimeEnd = rs.getTime("timeEnd");
                    String timeEnd = format.format(ftimeEnd);

                    String description = rs.getString("description");
                    int availablePerSlot = rs.getInt("availablePerSlot");
                    if (status == true) {
                        list.add(new StudioDTO(studioID, managerID, studioName, studioAddress,
                                city, district, studioPhoneNumber, studioEmail, status, rating, timeStart, timeEnd, description, availablePerSlot));
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
        }

        return list;
    }

    /*sort danh sách studio theo các option về dịch vụ khác nhau*/
    public List<StudioDTO> getSortStudioList(String serviceID, String serviceDetailID, String cityID, String sRating) throws SQLException {
        List<StudioDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sort = "SELECT distinct s.studioID, managerID, studioName, studioAddress, c.cityName, d.districtName, studioPhoneNumber, studioEmail, s.status, rating, timeStart, timeEnd, description, availablePerSlot FROM Studio s, City c, District d, Studio_Service ss WHERE s.cityID = c.cityID AND s.districtID = d.districtID";
                if (serviceID != null) {
                    sort = sort + " AND ss.studioID = s.studioID AND ss.serviceID=" + "'" + serviceID + "'";
                }

                if (serviceDetailID != null && serviceID != null) {
                    sort = sort + " AND ss.serviceDetailID=" + "'" + serviceDetailID + "'";
                } else if (serviceDetailID != null && serviceID == null) {
                    sort = sort + " AND ss.studioID = s.studioID AND ss.serviceDetailID=" + "'" + serviceDetailID + "'";
                }

                if (cityID != null) {
                    sort = sort + " AND s.cityID=" + "'" + cityID + "'";
                }

                if (sRating != null) {
                    int rating = Integer.parseInt(sRating);
                    sort = sort + " AND s.rating>=" + "'" + rating + "'";
                }

                ptm = conn.prepareStatement(sort);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String studioID = rs.getString("studioID");
                    String managerID = rs.getString("managerID");
                    String studioName = rs.getString("studioName");
                    String studioAddress = rs.getString("studioAddress");
                    String city = rs.getString("cityName");
                    String district = rs.getString("districtName");
                    String studioPhoneNumber = rs.getString("studioPhoneNumber");
                    String studioEmail = rs.getString("studioEmail");
                    boolean status = rs.getBoolean("status");
                    int rating = rs.getInt("rating");

                    DateFormat format = new SimpleDateFormat("H:mm");

                    Time ftimeStart = rs.getTime("timeStart");
                    String timeStart = format.format(ftimeStart);

                    Time ftimeEnd = rs.getTime("timeEnd");
                    String timeEnd = format.format(ftimeEnd);

                    String description = rs.getString("description");
                    int availablePerSlot = rs.getInt("availablePerSlot");
                    if (status == true) {
                        list.add(new StudioDTO(studioID, managerID, studioName, studioAddress,
                                city, district, studioPhoneNumber, studioEmail, status, rating, timeStart, timeEnd, description, availablePerSlot));
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
        }
        return list;
    }

    /*lấy danh sách các studio có dịch vụ A bằng serviceID*/
    public List<StudioDTO> getListStudioByService(String serviceID) throws SQLException {
        List<StudioDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SEARCH_STUDIO_BY_SERVICE);
                ptm.setString(1, serviceID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String studioID = rs.getString("studioID");
                    String managerID = rs.getString("managerID");
                    String studioName = rs.getString("studioName");
                    String studioAddress = rs.getString("studioAddress");
                    String city = rs.getString("cityName");
                    String district = rs.getString("districtName");
                    String studioPhoneNumber = rs.getString("studioPhoneNumber");
                    String studioEmail = rs.getString("studioEmail");
                    boolean status = rs.getBoolean("status");
                    int rating = rs.getInt("rating");

                    DateFormat format = new SimpleDateFormat("H:mm");

                    Time ftimeStart = rs.getTime("timeStart");
                    String timeStart = format.format(ftimeStart);

                    Time ftimeEnd = rs.getTime("timeEnd");
                    String timeEnd = format.format(ftimeEnd);

                    String description = rs.getString("description");
                    int availablePerSlot = rs.getInt("availablePerSlot");
                    if (status == true) {
                        list.add(new StudioDTO(studioID, managerID, studioName, studioAddress,
                                city, district, studioPhoneNumber, studioEmail, status, rating, timeStart, timeEnd, description, availablePerSlot));
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
        }

        return list;
    }

    /*lấy danh sách các studio có chi tiết dịch vụ A bằng serviceID*/
    public List<StudioDTO> getListStudioByServiceDetail(String serviceID) throws SQLException {
        List<StudioDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SEARCH_STUDIO_BY_SERVICE_DETAIL);
                ptm.setString(1, serviceID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String studioID = rs.getString("studioID");
                    String managerID = rs.getString("managerID");
                    String studioName = rs.getString("studioName");
                    String studioAddress = rs.getString("studioAddress");
                    String city = rs.getString("cityName");
                    String district = rs.getString("districtName");
                    String studioPhoneNumber = rs.getString("studioPhoneNumber");
                    String studioEmail = rs.getString("studioEmail");
                    boolean status = rs.getBoolean("status");
                    int rating = rs.getInt("rating");

                    DateFormat format = new SimpleDateFormat("H:mm");

                    Time ftimeStart = rs.getTime("timeStart");
                    String timeStart = format.format(ftimeStart);

                    Time ftimeEnd = rs.getTime("timeEnd");
                    String timeEnd = format.format(ftimeEnd);

                    String description = rs.getString("description");
                    int availablePerSlot = rs.getInt("availablePerSlot");
                    if (status == true) {
                        list.add(new StudioDTO(studioID, managerID, studioName, studioAddress,
                                city, district, studioPhoneNumber, studioEmail, status, rating, timeStart, timeEnd, description, availablePerSlot));
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
        }

        return list;
    }
}
