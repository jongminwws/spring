package org.hj.model;

public class NaverVo {
    private String n_age;
    private String n_birthday;
    private String n_email;
    private String n_gender;
    private String n_id;
    private String n_name;
    private String n_nickName;
    private String accessToken; // Add accessToken field

    // Getters and Setters

    public String getN_age() {
        return n_age;
    }

    public void setN_age(String n_age) {
        this.n_age = n_age;
    }

    public String getN_birthday() {
        return n_birthday;
    }

    public void setN_birthday(String n_birthday) {
        this.n_birthday = n_birthday;
    }

    public String getN_email() {
        return n_email;
    }

    public void setN_email(String n_email) {
        this.n_email = n_email;
    }

    public String getN_gender() {
        return n_gender;
    }

    public void setN_gender(String n_gender) {
        this.n_gender = n_gender;
    }

    public String getN_id() {
        return n_id;
    }

    public void setN_id(String n_id) {
        this.n_id = n_id;
    }

    public String getN_name() {
        return n_name;
    }

    public void setN_name(String n_name) {
        this.n_name = n_name;
    }

    public String getN_nickName() {
        return n_nickName;
    }

    public void setN_nickName(String n_nickName) {
        this.n_nickName = n_nickName;
    }
    // Add getter and setter for accessToken
    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }
    @Override
    public String toString() {
        return "NaverVo [n_age=" + n_age + ", n_birthday=" + n_birthday + ", n_email=" + n_email + ", n_gender="
                + n_gender + ", n_id=" + n_id + ", n_name=" + n_name + ", n_nickName=" + n_nickName + ", accessToken="
                + accessToken + "]";
    }
}
