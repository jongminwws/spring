package org.hj.model;

public class logins {
    private String id;
    private String password;

    // getter와 setter
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "logins [id=" + id + ", password=" + password + "]";
    }
}
