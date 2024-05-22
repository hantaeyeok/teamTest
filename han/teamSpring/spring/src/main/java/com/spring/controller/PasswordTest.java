package com.spring.controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordTest {
    public static void main(String[] args) {
    	String password = "1234";
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

        String hashedPassword = passwordEncoder.encode(password);
        System.out.println("hashedPassword" + hashedPassword);
        
        boolean isPasswordMatch = passwordEncoder.matches(password, hashedPassword);
        
        System.out.println(isPasswordMatch);
    }
    
}