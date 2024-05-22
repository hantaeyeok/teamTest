package com.spring.controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordTest2 {
    public static void main(String[] args) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

        // 원본 비밀번호
        String rawPassword = "a1234";

        // 비밀번호 인코딩
        String encodedPassword = encoder.encode(rawPassword);
        System.out.println("Encoded password: " + encodedPassword);

        // 데이터베이스에 저장된 비밀번호 해시
        String storedPasswordHash = "$2a$10$RPbM4hZkZ2eVd9uzBnDJIeYagnOqRgkPWxYVNnOTcP/EcyaNddIiS";

        // 비밀번호 일치 여부 확인
        boolean isPasswordMatch = encoder.matches(rawPassword, storedPasswordHash);
        System.out.println("Password match: " + isPasswordMatch);
    }
    
}