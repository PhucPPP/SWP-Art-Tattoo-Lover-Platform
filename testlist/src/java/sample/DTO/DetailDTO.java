/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.DTO;

/**
 *
 * @author hieu09097248
 */
public class DetailDTO {
    private String id;
    private String studioName;
    private String time;
    private String dateBook;
    private String dateCome;
    private String status;
    private String description;

    public DetailDTO(String id, String studioName, String time, String dateBook, String dateCome, String status, String description) {
        this.id = id;
        this.studioName = studioName;
        this.time = time;
        this.dateBook = dateBook;
        this.dateCome = dateCome;
        this.status = status;
        this.description = description;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getStudioName() {
        return studioName;
    }

    public void setStudioName(String studioName) {
        this.studioName = studioName;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDateBook() {
        return dateBook;
    }

    public void setDateBook(String dateBook) {
        this.dateBook = dateBook;
    }

    public String getDateCome() {
        return dateCome;
    }

    public void setDateCome(String dateCome) {
        this.dateCome = dateCome;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    
}
