package com.example.hostelmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.hostelmanagement.entity.Hostel;
import com.example.hostelmanagement.repository.HostelRepository;

@Service
public class HostelService {

    @Autowired
    private HostelRepository hostelRepository;

    public List<Hostel> searchHostelsByLocation(String location) {
        return hostelRepository.findByLocationContainingIgnoreCase(location);
    }
}