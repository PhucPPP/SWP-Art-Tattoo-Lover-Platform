/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.BookingDTO;
import DTO.ServiceDTO;
import DTO.ServiceDetailDTO;
import DTO.ServiceSizeDTO;
import Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class ServiceDAO {

    private static String SERVICE = "SELECT serviceID, serviceName, status FROM Service";
    private static String SERVICE_DETAIL = "SELECT serviceDetailID, serviceDetailName, status FROM Service_Detail";
    private static final String GET_SERVICE_BY_ID = "SELECT * FROM Service WHERE serviceID=?";
    private static final String GET_SERVICE_DETAIL_BY_ID = "SELECT * FROM Service_Detail WHERE serviceDetailID=?";

    private static String SERVICE_LIST = "Select serviceID, fullname, serviceName, s.[status] from [Service] s, [User] u where s.systemStaffID = u.userID";
    private static String SERVICE_LIST_DETAIL = "Select serviceDetailID, fullname, serviceDetailName, s.[status] from [Service_Detail] s, [User] u where s.systemStaffID = u.userID";
    private static String SERVICE_SIZE = "Select serviceSizeID, fullname, serviceSizeName, s.[status] from [Service_Size] s, [User] u where s.systemStaffID = u.userID";
    
    public List<ServiceDTO> getService() throws SQLException {
        List<ServiceDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SERVICE);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceID = rs.getString("serviceID");
                    String serviceName = rs.getString("serviceName");
                    boolean status = rs.getBoolean("status");
                    if (status == true) {
                        list.add(new ServiceDTO(serviceID, null, serviceName, status));
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

    public List<ServiceDetailDTO> getServiceDetail() throws SQLException {
        List<ServiceDetailDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SERVICE_DETAIL);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceDetailID = rs.getString("serviceDetailID");
                    String serviceDetailName = rs.getString("serviceDetailName");
                    boolean status = rs.getBoolean("status");
                    if (status == true) {
                        list.add(new ServiceDetailDTO(serviceDetailID, null, serviceDetailName, status));
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

    public List<ServiceDTO> getServiceByID(String serviceID) throws SQLException {
        List<ServiceDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_SERVICE_BY_ID);
                ptm.setString(1, serviceID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceName = rs.getString("serviceName");
                    boolean status = rs.getBoolean("status");
                    if (status == true) {
                        list.add(new ServiceDTO(serviceID, null, serviceName, status));
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

    public List<ServiceDetailDTO> getServiceDetailByID(String serviceID) throws SQLException {
        List<ServiceDetailDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_SERVICE_DETAIL_BY_ID);
                ptm.setString(1, serviceID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceDetailID = rs.getString("serviceDetailID");
                    String serviceDetailName = rs.getString("serviceDetailName");
                    boolean status = rs.getBoolean("status");
                    if (status == true) {
                        list.add(new ServiceDetailDTO(serviceDetailID, null, serviceDetailName, status));
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

    public List<ServiceDTO> getListService() throws SQLException {
        List<ServiceDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SERVICE_LIST);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceId = rs.getString(1);
                    String staffName = rs.getString(2);
                    String nameService = rs.getString(3);
                    boolean status = rs.getBoolean(4);

                    list.add(new ServiceDTO(serviceId, staffName, nameService, status));
                    
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
    
    public List<ServiceDetailDTO> getListServiceDetail() throws SQLException {
        List<ServiceDetailDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SERVICE_LIST_DETAIL);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceId = rs.getString(1);
                    String staffName = rs.getString(2);
                    String nameService = rs.getString(3);
                    boolean status = rs.getBoolean(4);

                    list.add(new ServiceDetailDTO(serviceId, staffName, nameService, status));
                    
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
    
    public List<ServiceSizeDTO> getListServiceSize() throws SQLException {
        List<ServiceSizeDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SERVICE_SIZE);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String serviceId = rs.getString(1);
                    String staffName = rs.getString(2);
                    String nameService = rs.getString(3);
                    boolean status = rs.getBoolean(4);

                    list.add(new ServiceSizeDTO(serviceId, staffName, nameService, status));
                    
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
