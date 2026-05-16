package com.example.hostelmanagement.service;



import  com.example.hostelmanagement.entity.Employee;
import  com.example.hostelmanagement.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    public Employee registerEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }

    public Employee loginEmployee(String email, String password) {
        return employeeRepository.findByEmailAndPassword(email, password);
    }

    public Employee getEmployeeByEmail(String email) {
        return employeeRepository.findByEmail(email);
    }
}