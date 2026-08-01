package com.example.hostelmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.hostelmanagement.entity.Hostel;
import com.example.hostelmanagement.service.HostelService;

import org.springframework.ui.Model;

@Controller
public class HostelController {

    @Autowired
    private HostelService hostelService;

    @GetMapping("/searchHostel")
    public String searchHostels(@RequestParam("location") String location, Model model) {
        List<Hostel> hostels = hostelService.searchHostelsByLocation(location);
        model.addAttribute("hostels", hostels);
        model.addAttribute("searchedLocation", location);
        if(location.equals("Gajuwaka"))
        	return "gajuwakaresult";
        else if(location.equals("Madhuravada"))
        		return "madhuresults";
        else if(location.equals("Duvvada"))
        	return "duvvadaresults";
        else if(location.equals("Rushikonda"))
        	return "rushikondaresults";
        else
        return "dwarakanagarresult"; // JSP page to show results
    }
}