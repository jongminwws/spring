package org.hj.model;

public class memberVO {
    private String id;
    private String phone;

    public String getMe_name() {
        return id;
    }

    public void setMe_name(String id) {
        this.id = id;
    }

    public String getMe_tel() {
        return phone;
    }

    public void setMe_tel(String phone) {
        this.phone = phone;
    }
    private String memberId; // memberId 필드 추가

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }
}
