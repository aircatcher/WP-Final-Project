/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Timestamp;

/**
 *
 * @author Adam
 */
public class News {
    private int id;
    private String name;
    private String news;
    private Timestamp date;

    public News(){}
    public News(int id, String name, String news, Timestamp date) {
        this.id = id;
        this.name = name;
        this.news = news;
        this.date = date;
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
    public String getNews() {
        return news;
    }
    public void setNews(String news) {
        this.news = news;
    }
    public Timestamp getDate() {
        return date;
    }
    public void setDate(Timestamp date) {
        this.date = date;
    }
}
