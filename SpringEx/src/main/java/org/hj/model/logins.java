package org.hj.model;

public class logins {
    private String id;
    private String password;
    private String name; // name 속성 추가
    private String email; // email 속성 추가
    
 // Getters and Setters
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
    
    // getter와 setter
    public String getName() { // name 속성의 getter 추가
        return name;
    }

    public void setName(String name) { // name 속성의 setter 추가
        this.name = name;
    }

    public String getEmail() { // email 속성의 getter 추가
        return email;
    }

    public void setEmail(String email) { // email 속성의 setter 추가
        this.email = email;
    }

    @Override
    public String toString() {
        return "logins [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + "]";
    }

	public Object getRole() {
		// TODO Auto-generated method stub
		return null;
	}
}
