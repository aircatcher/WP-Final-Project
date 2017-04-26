package Model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Map;
import javax.swing.JOptionPane;

public class DB_Connect_Admin {
    private static final String DBURL = "jdbc:mysql://localhost/wpgamestore";
    private static final String DBUserName = "root";
    private static final String DBPassword = "";
    
    // loggin in
    public static User loginUser(String username, String password) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        User user = new User();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select * FROM user WHERE username = '" + username + "' AND password = '"
                    + password + "'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setType(rs.getString("type"));
                user.setLastLogin(rs.getTimestamp("lastLogin"));
                
                rs.close();
                optionalStatement.close();
                return user;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // choose user
    public static User chooseUser(int id) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        User user = new User();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select * FROM user WHERE id = '" + id + "'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setType(rs.getString("type"));
                user.setLastLogin(rs.getTimestamp("lastLogin"));
                
                rs.close();
                optionalStatement.close();
                return user;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // choose product
    public static Product chooseProduct(int id) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        Product product = new Product();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select * FROM product WHERE id = '" + id + "'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                product.setId(rs.getInt("id"));
                product.setUrl(rs.getString("url"));
                product.setPrice(rs.getInt("price"));
                product.setName(rs.getString("name"));
                product.setCategory(rs.getString("category"));
                product.setDate(rs.getDate("date"));
                
                rs.close();
                optionalStatement.close();
                return product;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // total comment of a news
    public static int commentTotal(int newsId) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update timestamp
            optionalQuery = "SELECT COUNT(*) FROM comment WHERE newsId = '" + newsId + "'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            if(!rs.next()){
                return 0;
            } else{
                return rs.getInt("COUNT(*)");
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // update login date
    public static int updateLoginDate(int id) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update timestamp
            optionalQuery = "UPDATE user SET lastLogin = DEFAULT WHERE id = '" + id + "'";
            success = optionalStatement.executeUpdate(optionalQuery);
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // change history
    public static int changeHistory(String history) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update history
            PreparedStatement pm = optionalConnection.prepareStatement("UPDATE history SET history = ? WHERE id = '1'");
            pm.setString(1, history);
            success = pm.executeUpdate();
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // change profile
    public static int changeProfile(String profile) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update profile
            PreparedStatement pm = optionalConnection.prepareStatement("UPDATE profile SET profile = ? WHERE id = '1'");
            pm.setString(1, profile);
            success = pm.executeUpdate();
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // edit user
    public static int changeUser(int id, String username, String password, String name, String type) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update profile
            optionalQuery = "UPDATE user SET username = '" + username + "' password = '" + password + "' name = '"
                    + name + "' type = '" + type + "' WHERE id = '" + id + "'";
            success = optionalStatement.executeUpdate(optionalQuery);
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // remove user
    public static int removeUser(int id) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update profile
            optionalQuery = "DELETE FROM user WHERE id = '" + id + "'";
            success = optionalStatement.executeUpdate(optionalQuery);
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // remove product
    public static int removeProduct(int id) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update profile
            optionalQuery = "DELETE FROM product WHERE id = '" + id + "'";
            success = optionalStatement.executeUpdate(optionalQuery);
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // remove news
    public static int removeNews(int id) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update profile
            optionalQuery = "DELETE FROM news WHERE id = '" + id + "'";
            success = optionalStatement.executeUpdate(optionalQuery);
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // remove comment
    public static int removeComment(int id) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update profile
            optionalQuery = "DELETE FROM comment WHERE id = '" + id + "'";
            success = optionalStatement.executeUpdate(optionalQuery);
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // change menu location
    public static int changeMenuLocation(int menuLocation) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update link
            optionalQuery = "UPDATE staticelements SET menulocation = '" + menuLocation + "' WHERE id = '1'";
            success = optionalStatement.executeUpdate(optionalQuery);
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // change address
    public static int changeAddress(String address) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update link
            optionalQuery = "UPDATE staticelements SET address = '" + address + "' WHERE id = '1'";
            success = optionalStatement.executeUpdate(optionalQuery);
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // change phone
    public static int changePhone(String phone) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update link
            optionalQuery = "UPDATE staticelements SET phone = '" + phone + "' WHERE id = '1'";
            success = optionalStatement.executeUpdate(optionalQuery);
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // change facebook link
    public static int changeFacebookLink(String facebookLink) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update link
            optionalQuery = "UPDATE staticelements SET facebooklink = '" + facebookLink + "' WHERE id = '1'";
            success = optionalStatement.executeUpdate(optionalQuery);
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // change news
    public static int changeNews(String name, String news) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update profile
            PreparedStatement pm = optionalConnection.prepareStatement("UPDATE news SET name = ? news = ? WHERE id = '1'");
            pm.setString(1, name);
            pm.setString(2, news);
            success = pm.executeUpdate();
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // change twitter link
    public static int changeTwitterLink(String twitterLink) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // update link
            optionalQuery = "UPDATE staticelements SET twitterlink = '" + twitterLink + "' WHERE id LIKE '1'";
            success = optionalStatement.executeUpdate(optionalQuery);
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // get user list
    public static ArrayList<User> getUserList() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        ArrayList<User> userList = new ArrayList<>();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "SELECT * FROM user ORDER BY name";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                // loop while there are more data
                do{
                    int id = rs.getInt("id");
                    String username = rs.getString("username");
                    String password = rs.getString("password");
                    String name = rs.getString("name");
                    String type = rs.getString("type");
                    Timestamp lastLogin = rs.getTimestamp("lastLogin");
                    
                    userList.add(new User(id, username, password, name, type, lastLogin));
                }
                while(rs.next());
                
                rs.close();
                optionalStatement.close();
                return userList;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get random product
    public static Product getRandomProduct() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result
            optionalQuery = "SELECT * FROM product ORDER BY RAND() LIMIT 1";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                Product product = new Product();
                
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setUrl(rs.getString("url"));
                product.setPrice(rs.getInt("price"));
                product.setCategory(rs.getString("category"));
                product.setDate(rs.getDate("date"));
                    
                rs.close();
                optionalStatement.close();
                return product;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get latest news
    public static News getLatestNews() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result
            optionalQuery = "SELECT * FROM news ORDER BY date DESC LIMIT 1";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                News news = new News();
                
                news.setId(rs.getInt("id"));
                news.setName(rs.getString("name"));
                news.setNews(rs.getString("news"));
                news.setDate(rs.getTimestamp("date"));
                    
                rs.close();
                optionalStatement.close();
                return news;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get second latest news
    public static News getLatestNews2() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result
            optionalQuery = "SELECT * FROM news ORDER BY date DESC LIMIT 2";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            rs.next();
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                News news = new News();
                
                news.setId(rs.getInt("id"));
                news.setName(rs.getString("name"));
                news.setNews(rs.getString("news"));
                news.setDate(rs.getTimestamp("date"));
                    
                rs.close();
                optionalStatement.close();
                return news;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get third latest news
    public static News getLatestNews3() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result
            optionalQuery = "SELECT * FROM news ORDER BY date DESC LIMIT 3";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            rs.next();
            rs.next();
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                News news = new News();
                
                news.setId(rs.getInt("id"));
                news.setName(rs.getString("name"));
                news.setNews(rs.getString("news"));
                news.setDate(rs.getTimestamp("date"));
                    
                rs.close();
                optionalStatement.close();
                return news;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get phone
    public static String getPhone() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result
            optionalQuery = "SELECT phone FROM staticelements WHERE id = '1'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                String phone = rs.getString("phone");
                    
                rs.close();
                optionalStatement.close();
                return phone;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get address
    public static String getAddress() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result
            optionalQuery = "SELECT address FROM staticelements WHERE id = '1'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                String address = rs.getString("address");
                    
                rs.close();
                optionalStatement.close();
                return address;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get history
    public static String getHistory() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result
            optionalQuery = "SELECT history FROM history WHERE id = '1'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                String history = rs.getString("history");
                    
                rs.close();
                optionalStatement.close();
                return history;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get profile
    public static String getProfile() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result
            optionalQuery = "SELECT profile FROM profile WHERE id = '1'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                String profile = rs.getString("profile");
                    
                rs.close();
                optionalStatement.close();
                return profile;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get facebook link
    public static String getFacebookLink() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result
            optionalQuery = "SELECT facebookLink FROM staticelements WHERE id = '1'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                String facebookLink = rs.getString("facebookLink");
                    
                rs.close();
                optionalStatement.close();
                return facebookLink;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get twitter link
    public static String getTwitterLink() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result
            optionalQuery = "SELECT twitterLink FROM staticElements WHERE id = '1'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                String twitterLink = rs.getString("twitterLink");
                    
                rs.close();
                optionalStatement.close();
                return twitterLink;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get images
    public static Image getImage(int id) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        Image image;
        
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result
            optionalQuery = "SELECT * FROM image WHERE id = '" + id + "'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                int getId = rs.getInt("id");
                String name = rs.getString("name");
                String url = rs.getString("url");
                
                image = new Image(getId, name, url);
                    
                rs.close();
                optionalStatement.close();
                return image;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get product list (without search)
    public static ArrayList<Product> getProductList() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        ArrayList<Product> productList = new ArrayList<>();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select * FROM product ORDER BY name";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                // loop while there are more data
                do{
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String url = rs.getString("url");
                    int price = rs.getInt("price");
                    String category = rs.getString("category");
                    Date date = rs.getDate("date");
                    
                    productList.add(new Product(id, name, url, price, category, date));
                }
                while(rs.next());
                
                rs.close();
                optionalStatement.close();
                return productList;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get comment list per news
    public static ArrayList<Comment> getCommentList(int cNewsId) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        ArrayList<Comment> commentList = new ArrayList<>();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select * FROM comment WHERE newsId = '" + cNewsId + "' ORDER BY date DESC";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                // loop while there are more data
                do{
                    int id = rs.getInt("id");
                    int newsId = rs.getInt("newsId");
                    String username = rs.getString("username");
                    String comment = rs.getString("comment");
                    Timestamp date = rs.getTimestamp("date");
                    
                    commentList.add(new Comment(id, newsId, username, comment, date));
                }
                while(rs.next());
                
                rs.close();
                optionalStatement.close();
                return commentList;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get comment list
    public static ArrayList<Comment> getCommentList() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        ArrayList<Comment> commentList = new ArrayList<>();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select * FROM comment ORDER BY date DESC";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                // loop while there are more data
                do{
                    int id = rs.getInt("id");
                    int newsId = rs.getInt("newsId");
                    String username = rs.getString("username");
                    String comment = rs.getString("comment");
                    Timestamp date = rs.getTimestamp("date");
                    
                    commentList.add(new Comment(id, newsId, username, comment, date));
                }
                while(rs.next());
                
                rs.close();
                optionalStatement.close();
                return commentList;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get slideshow images
    public static ArrayList<Integer> getSlideshowImage() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        ArrayList<Integer> imageList = new ArrayList<>();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select image1, image2, image3, image4 FROM staticelements WHERE id = '1'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                    imageList.add(rs.getInt("image1"));
                    imageList.add(rs.getInt("image2"));
                    imageList.add(rs.getInt("image3"));
                    imageList.add(rs.getInt("image4"));
                
                rs.close();
                optionalStatement.close();
                return imageList;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get product list (with search)
    public static ArrayList<Product> getProductList(String search) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        ArrayList<Product> productList = new ArrayList<>();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select * FROM product WHERE name = '%" + search + "%' ORDER BY name";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                // loop while there are more data
                do{
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String url = rs.getString("url");
                    int price = rs.getInt("price");
                    String category = rs.getString("category");
                    Date date = rs.getDate("date");
                    
                    productList.add(new Product(id, name, url, price, category, date));
                }
                while(rs.next());
                
                rs.close();
                optionalStatement.close();
                return productList;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }// get product list (with type)
    public static ArrayList<Product> getProductListCategory(String category) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        ArrayList<Product> productList = new ArrayList<>();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select * FROM product WHERE category = '%" + category + "%' ORDER BY name";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                // loop while there are more data
                do{
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String url = rs.getString("url");
                    int price = rs.getInt("price");
                    String thiscategory = rs.getString("category");
                    Date date = rs.getDate("date");
                    
                    productList.add(new Product(id, name, url, price, thiscategory, date));
                }
                while(rs.next());
                
                rs.close();
                optionalStatement.close();
                return productList;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get news list (without search)
    public static ArrayList<News> getNewsList() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        ArrayList<News> newsList = new ArrayList<>();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select * FROM news ORDER BY date DESC";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                // loop while there are more data
                do{
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String news = rs.getString("news");
                    Timestamp date = rs.getTimestamp("date");
                    
                    newsList.add(new News(id, name, news, date));
                }
                while(rs.next());
                
                rs.close();
                optionalStatement.close();
                return newsList;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get ascending news list (without search)
    public static ArrayList<News> getAscendingNewsList() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        ArrayList<News> newsList = new ArrayList<>();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select * FROM news ORDER BY date";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                // loop while there are more data
                do{
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String news = rs.getString("news");
                    Timestamp date = rs.getTimestamp("date");
                    
                    newsList.add(new News(id, name, news, date));
                }
                while(rs.next());
                
                rs.close();
                optionalStatement.close();
                return newsList;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get news (without search)
    public static News chooseNews(int id) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        News news;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select * FROM news WHERE id = '" + id + "'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                String name = rs.getString("name");
                String getNews = rs.getString("news");
                Timestamp date = rs.getTimestamp("date");

                news = new News(id, name, getNews, date);
                
                rs.close();
                optionalStatement.close();
                return news;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get menu location
    public static int getMenuLocation() throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        News news;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "SELECT menuLocation FROM staticelements WHERE id = '1'";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return 0;
            }
            // if result set contained data
            else{
                int menuLocation = rs.getInt("menuLocation");
                
                rs.close();
                optionalStatement.close();
                return menuLocation;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // get news list (with search)
    public static ArrayList<News> getNewsList(String search) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        ArrayList<News> newsList = new ArrayList<>();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select * FROM news WHERE name LIKE '%" + search + "%' OR news LIKE '%" + search + "%' ORDER BY date DESC";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                // loop while there are more data
                do{
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String news = rs.getString("news");
                    Timestamp date = rs.getTimestamp("date");
                    
                    newsList.add(new News(id, name, news, date));
                }
                while(rs.next());
                
                rs.close();
                optionalStatement.close();
                return newsList;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // get ascending news list (with search)
    public static ArrayList<News> getAscendingNewsList(String search) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        ResultSet rs;
        
        ArrayList<News> newsList = new ArrayList<>();
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // get result set
            optionalQuery = "Select * FROM news WHERE name LIKE '%" + search + "%' OR news LIKE '%" + search + "%' ORDER BY date";
            rs = optionalStatement.executeQuery(optionalQuery);
            
            // if result set does not have a data
            if(!rs.next()){
                rs.close();
                optionalStatement.close();
                return null;
            }
            // if result set contained data
            else{
                // loop while there are more data
                do{
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String news = rs.getString("news");
                    Timestamp date = rs.getTimestamp("date");
                    
                    newsList.add(new News(id, name, news, date));
                }
                while(rs.next());
                
                rs.close();
                optionalStatement.close();
                return newsList;
            }
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }
    // add new news
    public static int addNews(String name, String news) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        PreparedStatement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            
            // create statement
            optionalStatement = optionalConnection.prepareStatement("INSERT INTO news VALUES(DEFAULT, ?, ?, DEFAULT)");
            optionalStatement.setString(1, name);
            optionalStatement.setString(2, news);
            
            // insert to news table
            success = optionalStatement.executeUpdate();
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // add new products
    public static int addProduct(String name, String url, int price, String category) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // insert to news table
            optionalQuery = "INSERT INTO product VALUES(DEFAULT, '" + name + "', '" + url + "', '" + price + "', '" + category + "', DEFAULT)";
            success = optionalStatement.executeUpdate(optionalQuery);
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // add new comment
    public static int addComment(int newsId, String username, String comment) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // insert to news table
            PreparedStatement pm = optionalConnection.prepareStatement("INSERT INTO comment VALUES(DEFAULT, ?, ?, ?, DEFAULT)");
            pm.setInt(1, newsId);
            pm.setString(2, username);
            pm.setString(3, comment);
            success = pm.executeUpdate();
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
    // add new user
    public static int addUser(String username, String password, String name, String type) throws ClassNotFoundException{
        String optionalQuery;
        Connection optionalConnection;
        Statement optionalStatement;
        
        int success;
        
        Class.forName("com.mysql.jdbc.Driver");
        try{
            optionalConnection = DriverManager.getConnection(DBURL, DBUserName, DBPassword);
            optionalStatement = optionalConnection.createStatement();
            
            // insert to table
            optionalQuery = "INSERT INTO user VALUES(DEFAULT, '" + username + "', '" + password + "', '"
                    + name + "', '" + type + "', DEFAULT)";
            success = optionalStatement.executeUpdate(optionalQuery);
            
            return success;
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex);
            return 0;
        }
    }
}
