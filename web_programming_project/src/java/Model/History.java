/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Adam
 */
public class History {
    private int id;
    private String history;

    public History(){};
    public History(int id, String history) {
        this.id = id;
        this.history = history;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getHistory() {
        return history;
    }
    public void setHistory(String history) {
        this.history = history;
    }
}
