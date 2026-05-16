package com.example.hostelmanagement.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String homePage() {
        return "index";
    }

    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @GetMapping("/student-register")
    public String studentRegisterPage() {
        return "student-register";
    }

    @GetMapping("/employee-register")
    public String employeeRegisterPage() {
        return "employee-register";
    }

    @GetMapping("/admin-login")
    public String adminLoginPage() {
        return "admin-login";
    }

    @GetMapping("/add-room")
    public String addRoomPage() {
        return "add-room";
    }
    @GetMapping("/vacate-room")
    public String vacateRoomPage() {
        return "vacate-room";
    }
    
}
