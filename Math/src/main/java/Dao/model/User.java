package Dao.model;

public class User {
    private Byte userid;

    private Byte username;

    private String userpwd;

    public Byte getUserid() {
        return userid;
    }

    public void setUserid(Byte userid) {
        this.userid = userid;
    }

    public Byte getUsername() {
        return username;
    }

    public void setUsername(Byte username) {
        this.username = username;
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd == null ? null : userpwd.trim();
    }
}