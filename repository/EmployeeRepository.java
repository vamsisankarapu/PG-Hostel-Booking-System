package com.example.hostelmanagement.repository;



import com.example.hostelmanagement.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {

    Employee findByEmailAndPassword(String email, String password);

    Employee findByEmail(String email);
}