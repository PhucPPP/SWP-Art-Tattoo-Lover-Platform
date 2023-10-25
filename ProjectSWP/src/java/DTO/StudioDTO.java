/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import DAO.*;
import java.sql.Time;

/**
 *
 * @author ASUS
 */
public class StudioDTO {

    private String id;
    private String mangerID;
    private String name;
    private String address;
    private String city;
    private String district;
    private String phoneNumber;
    private String email;
    private boolean status;
    private int rating;
    private String timeStart;
    private String timeEnd;
    private String description;
    private int availablePerSlot;

    public StudioDTO() {
    }

    public StudioDTO(String id, String mangerID, String name, String address, String city, String district, String phoneNumber, String email, boolean status, int rating, String timeStart, String timeEnd, String description, int availablePerSlot) {
        this.id = id;
        this.mangerID = mangerID;
        this.name = name;
        this.address = address;
        this.city = city;
        this.district = district;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.status = status;
        this.rating = rating;
        this.timeStart = timeStart;
        this.timeEnd = timeEnd;
        this.description = description;
        this.availablePerSlot = availablePerSlot;
        
    }

    public String getId() {
        return id;
    }

    public String getMangerID() {
        return mangerID;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getCity() {
        return city;
    }

    public String getDistrict() {
        return district;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public boolean isStatus() {
        return status;
    }

    public int getRating() {
        return rating;
    }

    public String getTimeStart() {
        return timeStart;
    }

    public String getTimeEnd() {
        return timeEnd;
    }

    public String getDescription() {
        return description;
    }

    public int getAvailablePerSlot() {
        return availablePerSlot;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setMangerID(String mangerID) {
        this.mangerID = mangerID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public void setTimeStart(String timeStart) {
        this.timeStart = timeStart;
    }

    public void setTimeEnd(String timeEnd) {
        this.timeEnd = timeEnd;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setAvailablePerSlot(int availablePerSlot) {
        this.availablePerSlot = availablePerSlot;
    }

    
}
