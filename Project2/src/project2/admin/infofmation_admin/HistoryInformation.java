/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2.admin.infofmation_admin;

/**
 *
 * @author son
 */
public class HistoryInformation {
    private int id;
    private String name;
    private String time;

    public HistoryInformation(int id, String name, String time) {
        this.id = id;
        this.name = name;
        this.time = time;
    }

    public HistoryInformation() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
    
}
