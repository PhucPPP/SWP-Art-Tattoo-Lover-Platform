/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;
/**
 *
 * @author ACER
 */
public class Studio {
    private String studioId;
    private String managerId;
    private String StudioName;
    private String studioAddress;
    private String cityId;
    private String districtId;
    private String phoneNumber;
    private String email;
    private boolean status;
    private float rating;
    private String timeStart;
    private String timeEnd;
    private String description;
    private int availablePerSlot;

    public Studio() {
    }

    public Studio(String studioId, String managerId, String StudioName, String studioAddress, String cityId, String districtId, String phoneNumber, String email, boolean status, float rating, String timeStart, String timeEnd, String description, int availablePerSlot) {
        this.studioId = studioId;
        this.managerId = managerId;
        this.StudioName = StudioName;
        this.studioAddress = studioAddress;
        this.cityId = cityId;
        this.districtId = districtId;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.status = status;
        this.rating = rating;
        this.timeStart = timeStart;
        this.timeEnd = timeEnd;
        this.description = description;
        this.availablePerSlot = availablePerSlot;
    }

    public String getStudioId() {
        return studioId;
    }

    public void setStudioId(String studioId) {
        this.studioId = studioId;
    }

    public String getManagerId() {
        return managerId;
    }

    public void setManagerId(String managerId) {
        this.managerId = managerId;
    }

    public String getStudioName() {
        return StudioName;
    }

    public void setStudioName(String StudioName) {
        this.StudioName = StudioName;
    }

    public String getStudioAddress() {
        return studioAddress;
    }

    public void setStudioAddress(String studioAddress) {
        this.studioAddress = studioAddress;
    }

    public String getCityId() {
        return cityId;
    }

    public void setCityId(String cityId) {
        this.cityId = cityId;
    }

    public String getDistrictId() {
        return districtId;
    }

    public void setDistrictId(String districtId) {
        this.districtId = districtId;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }

    public String getTimeStart() {
        return timeStart;
    }

    public void setTimeStart(String timeStart) {
        this.timeStart = timeStart;
    }

    public String getTimeEnd() {
        return timeEnd;
    }

    public void setTimeEnd(String timeEnd) {
        this.timeEnd = timeEnd;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getAvailablePerSlot() {
        return availablePerSlot;
    }

    public void setAvailablePerSlot(int availablePerSlot) {
        this.availablePerSlot = availablePerSlot;
    }
    
}
