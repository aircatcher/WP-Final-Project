package controller;

import com.mysql.jdbc.Connection;
import java.awt.HeadlessException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Ferick Andrew
 */
public class DBConn
{
    private static final String DBURL = new String("jdbc:mysql://localhost:3306/bsdb");
    private static final String DBUsername = new String("root");
    private static final String DBPassword = new String("");
    public static final String JDBCDriver = new String("com.mysql.jdbc.Driver");
    
    public static boolean newUser(String username, String email, String password, int count) throws ClassNotFoundException
    {
        Connection conn = null;
        Statement st = null;
        String query = null;
        
        Class.forName(JDBCDriver);
        try
        {          
            conn = (Connection) DriverManager.getConnection(DBURL, DBUsername, DBPassword);
            st = conn.createStatement();
            query = "SELECT * FROM user WHERE username='" + username + "';";
            st.executeQuery(query);
            /*if(st.getResultSet().next())
            {
                JOptionPane.showMessageDialog(null, "Username '" + username + "' is found. Please use another username.");
            }
            else*/
                query = "INSERT INTO user (username, email, password) VALUES ('" + username + "', '" + email + "', '" + password + "');";
                st.executeUpdate(query);
        }
        catch(SQLException ex)
        {
            JOptionPane.showMessageDialog(null, ex);
            return false;
        } catch (HeadlessException ex) {
            JOptionPane.showMessageDialog(null, ex);
            return false;
        }
        return true;
    }
    
    public static boolean loginUser(String username, String password)
    {
        boolean status = false;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet result = null;
        
        try
        {
            Class.forName(JDBCDriver).newInstance();
            conn = (Connection) DriverManager.getConnection(DBURL, DBUsername, DBPassword);
            pst = conn.prepareStatement("SELECT * FROM user WHERE username=? AND password=?");
            pst.setString(1, username);
            pst.setString(2, password);
            
            result = pst.executeQuery();
            status = result.next();
        }
        catch (Exception e) { System.out.println(e); }
        finally
        {  
            if (conn != null)
            {
                try   { conn.close(); }
                catch (SQLException e) { e.printStackTrace(); }
            }
            if (pst != null)
            {
                try   { pst.close(); }
                catch (SQLException e) { e.printStackTrace(); }
            }
            if (result != null)
            {  
                try     { result.close(); }
                catch (SQLException e) { e.printStackTrace(); }
            }
        }
        return status;
    }
    
    public static boolean changePassword(String username, String password, String newPassword)
    {
        boolean status = false;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet result = null;
        
        try
        {
            Class.forName(JDBCDriver).newInstance();
            conn = (Connection) DriverManager.getConnection(DBURL, DBUsername, DBPassword);
            pst = conn.prepareStatement("UPDATE user SET password=? WHERE (username='?' AND password='?');");
            pst.setString(1, newPassword);
            pst.setString(2, username);
            pst.setString(2, password);
            
            result = pst.executeQuery();
            status = result.next();
        }
        catch (Exception e) { System.out.println(e); }
        finally
        {  
            if (conn != null)
            {
                try   { conn.close(); }
                catch (SQLException e) { e.printStackTrace(); }
            }
            if (pst != null)
            {
                try   { pst.close(); }
                catch (SQLException e) { e.printStackTrace(); }
            }
            if (result != null)
            {  
                try     { result.close(); }
                catch (SQLException e) { e.printStackTrace(); }
            }
        }
        return status;
    }
    
    public static String MD5(String input) throws NoSuchAlgorithmException
    {
        try
        {
            MessageDigest mDig = MessageDigest.getInstance("MD5");
            byte[] messageDigest = mDig.digest(input.getBytes());
            BigInteger bigInt = new BigInteger(1, messageDigest);
            String hash = bigInt.toString(16);

            while (hash.length() < 32) hash = "0" + hash;
            return hash;
        }
        catch (Exception e)
        {
            throw new RuntimeException(e);
        }
    }
}