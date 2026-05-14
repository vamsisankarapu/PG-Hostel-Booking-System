package com.example.hostelmanagement.repository;



import com.example.hostelmanagement.entity.Booking;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Long> {

    List<Booking> findByEmail(String email);

    List<Booking> findByUserType(String userType);
}