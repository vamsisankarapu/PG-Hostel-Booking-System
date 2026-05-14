package com.example.hostelmanagement.service;



import com.example.hostelmanagement.entity.Student;
import com.example.hostelmanagement.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService {

    @Autowired
    private StudentRepository studentRepository;

    public Student registerStudent(Student student) {
        return studentRepository.save(student);
    }

    public Student loginStudent(String email, String password) {
        return studentRepository.findByEmailAndPassword(email, password);
    }

    public Student getStudentByEmail(String email) {
        return studentRepository.findByEmail(email);
    }
}