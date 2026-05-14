package com.example.hostelmanagement.controller;



import com.example.hostelmanagement.entity.Employee;
import com.example.hostelmanagement.service.EmployeeService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @PostMapping("/saveEmployee")
    public String saveEmployee(@ModelAttribute Employee employee, Model model) {

        Employee existing = employeeService.getEmployeeByEmail(employee.getEmail());

        if (existing != null) {
            model.addAttribute("error", "Email already registered!");
            return "employee-register";
        }

        employeeService.registerEmployee(employee);
        model.addAttribute("success", "Registration successful. Please login.");
        return "login";
    }

    @PostMapping("/employeeLogin")
    public String employeeLogin(@RequestParam String email,
                                @RequestParam String password,
                                HttpSession session,
                                Model model) {

        Employee employee = employeeService.loginEmployee(email, password);

        if (employee != null) {
            session.setAttribute("userEmail", employee.getEmail());
            session.setAttribute("userName", employee.getFullName());
            session.setAttribute("userType", "EMPLOYEE");
            return "employee-dashboard";
        }

        model.addAttribute("error", "Invalid employee credentials");
        return "login";
    }
}