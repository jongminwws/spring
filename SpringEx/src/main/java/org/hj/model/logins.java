package org.hj.model;

public class logins {
    private String id;
    private String password;
    private String name;
    private String email;
    private String userName;
    
    // Getter와 Setter 메서드들
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
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getUsername() {
        return userName;
    }

    public void setUsername(String userName) {
        this.userName = userName;
    }

    @Override
    public String toString() {
        return "logins [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + "]";
    }
}
