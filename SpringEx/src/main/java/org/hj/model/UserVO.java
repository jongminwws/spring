package org.hj.model;

public class UserVO {
	private String username; // 사용자 아이디
    private String email;    // 사용자 이메일 등 추가 필드 가능

    // 생성자, getter, setter 등 필요한 메서드들을 정의합니다.

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
