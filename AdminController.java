package com.example.hostelmanagement.controller;




import com.example.hostelmanagement.entity.Admin;
import com.example.hostelmanagement.service.AdminService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @PostMapping("/adminLogin")
    public String adminLogin(@RequestParam String username,
                             @RequestParam String password,
                             HttpSession session,
                             Model model) {

        Admin admin = adminService.loginAdmin(username, password);

        if (admin != null) {
            session.setAttribute("admin", "ADMIN");
            session.setAttribute("adminName", admin.getUsername());
            return "admin-dashboard";
        }

        model.addAttribute("error", "Invalid Admin Credentials");
        return "admin-login";
    }
}