package com.example.hostelmanagement.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.hostelmanagement.entity.Hostel;

@Repository
public interface HostelRepository extends JpaRepository<Hostel, Long> {
    List<Hostel> findByLocationContainingIgnoreCase(String location);
}
