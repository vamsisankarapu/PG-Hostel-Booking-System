package com.example.hostelmanagement.service;



import com.example.hostelmanagement.entity.Admin;
import com.example.hostelmanagement.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

    @Autowired
    private AdminRepository adminRepository;

    public Admin loginAdmin(String username, String password) {
        return adminRepository.findByUsernameAndPassword(username, password);
    }
}
