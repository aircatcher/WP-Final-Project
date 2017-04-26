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
public class Profile {
    private int id;
    private String profile;

    public Profile(){}
    public Profile(int id, String profile) {
        this.id = id;
        this.profile = profile;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getProfile() {
        return profile;
    }
    public void setProfile(String profile) {
        this.profile = profile;
    }
}
