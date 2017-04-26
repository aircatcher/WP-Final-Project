package Model;

import java.sql.Timestamp;

public class Comment {
    private int id;
    private int newsId;
    private String username;
    private String comment;
    private Timestamp date;

    public Comment(int id, int newsId, String username, String comment, Timestamp date) {
        this.id = id;
        this.newsId = newsId;
        this.username = username;
        this.comment = comment;
        this.date = date;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getNewsId() {
        return newsId;
    }
    public void setNewsId(int newsId) {
        this.newsId = newsId;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getComment() {
        return comment;
    }
    public void setComment(String comment) {
        this.comment = comment;
    }
    public Timestamp getDate() {
        return date;
    }
    public void setDate(Timestamp date) {
        this.date = date;
    }
}
