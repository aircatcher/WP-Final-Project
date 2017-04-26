package Model;

import java.sql.Date;

/**
 *
 * @author Adam
 */
public class Product {
    private int id;
    private String name;
    private String url;
    private int price;
    private String category;
    private Date date;

    public Product(){}
    public Product(int id, String name, String url, int price, String category, Date date) {
        this.id = id;
        this.name = name;
        this.url = url;
        this.price = price;
        this.category = category;
        this.date = date;
    }
    public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }
    public String getUrl() {
        return url;
    }
    public void setUrl(String url) {
        this.url = url;
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
    public int getPrice() {
        return price;
    }
    public void setPrice(int price) {
        this.price = price;
    }
    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }
}
