package com.spring.controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordTest {
    public static void main(String[] args) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

        String rawPassword = "12345";
        String encodedPassword = encoder.encode(rawPassword);

        System.out.println("원본 비밀번호: " + rawPassword);
        System.out.println("암호화된 비밀번호: " + encodedPassword);

        boolean matches = encoder.matches(rawPassword, encodedPassword);
        System.out.println("비밀번호 비교 결과: " + matches);
        
       

        String rawPassword1 = "12345";
        String encodedPassword1 = "$2a$10$cGR.iUEwM.ILEm/vKiI1IOmlfOXjH/zAsL.E24UYxT5Nke9HfwRzy";

        System.out.println("원본 비밀번호: " + rawPassword1);
        System.out.println("암호화된 비밀번호: " + encodedPassword1);

        boolean matches1 = encoder.matches(rawPassword1, encodedPassword1);
        System.out.println("비밀번호 비교 결과: " + matches1);

    }
}