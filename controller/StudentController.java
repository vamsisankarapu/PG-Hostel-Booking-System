package com.example.hostelmanagement.controller;


import com.example.hostelmanagement.entity.Student;
import com.example.hostelmanagement.service.StudentService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @PostMapping("/saveStudent")
    public String saveStudent(@ModelAttribute Student student, Model model) {

        Student existing = studentService.getStudentByEmail(student.getEmail());

        if (existing != null) {
            model.addAttribute("error", "Email already registered!");
            return "student-register";
        }

        studentService.registerStudent(student);
        model.addAttribute("success", "Registration successful. Please login.");
        return "login";
    }

    @PostMapping("/studentLogin")
    public String studentLogin(@RequestParam String email,
                               @RequestParam String password,
                               HttpSession session,
                               Model model) {

        Student student = studentService.loginStudent(email, password);

        if (student != null) {
            session.setAttribute("userEmail", student.getEmail());
            session.setAttribute("userName", student.getFullName());
            session.setAttribute("userType", "STUDENT");
            return "student-dashboard";
        }

        model.addAttribute("error", "Invalid student credentials");
        return "login";
    }
}
