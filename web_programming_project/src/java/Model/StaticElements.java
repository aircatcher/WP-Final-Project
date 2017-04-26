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
public class StaticElements {
    private int id;
    private String facebookLink;
    private String twitterLink;
    private String address;
    private String phone;
    private int menuLocation;
    private int image1;
    private int image2;
    private int image3;
    private int image4;

    public StaticElements(){}
    public StaticElements(int id, String facebookLink, String twitterLink, String address, String phone, int menuLocation, int image1, int image2, int image3, int image4) {
        this.id = id;
        this.facebookLink = facebookLink;
        this.twitterLink = twitterLink;
        this.address = address;
        this.phone = phone;
        this.menuLocation = menuLocation;
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
        this.image4 = image4;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getFacebookLink() {
        return facebookLink;
    }
    public void setFacebookLink(String facebookLink) {
        this.facebookLink = facebookLink;
    }
    public String getTwitterLink() {
        return twitterLink;
    }
    public void setTwitterLink(String twitterLink) {
        this.twitterLink = twitterLink;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public int getMenuLocation() {
        return menuLocation;
    }
    public void setMenuLocation(int menuLocation) {
        this.menuLocation = menuLocation;
    }
    public int getImage1() {
        return image1;
    }
    public void setImage1(int image1) {
        this.image1 = image1;
    }
    public int getImage2() {
        return image2;
    }
    public void setImage2(int image2) {
        this.image2 = image2;
    }
    public int getImage3() {
        return image3;
    }
    public void setImage3(int image3) {
        this.image3 = image3;
    }
    public int getImage4() {
        return image4;
    }
    public void setImage4(int image4) {
        this.image4 = image4;
    }
}
