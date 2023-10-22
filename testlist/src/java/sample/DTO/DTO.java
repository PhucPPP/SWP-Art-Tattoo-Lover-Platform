/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.DTO;

/**
 *
 * @author hieu09097248
 */
public class DTO {

    private String id;
    private String studio;
    private String time;
    private String dateBook;
    private String dateCome;
    private String status;

    public DTO(String id, String studio, String time, String dateBook, String dateCome, String status) {
        this.id = id;
        this.studio = studio;
        this.time = time;
        this.dateBook = dateBook;
        this.dateCome = dateCome;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getStudio() {
        return studio;
    }

    public void setStudio(String studio) {
        this.studio = studio;
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
    

    

}
