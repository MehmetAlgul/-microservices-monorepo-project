package com.example.userservice.dto;

public class LoginResponse {
    private String token;
    private String message;

    public String getToken() {
        return token;
    }

    public String getMessage() {
        return message;
    }

    public LoginResponse(String token, String message) {
        this.token = token;
        this.message = message;


    }
}
