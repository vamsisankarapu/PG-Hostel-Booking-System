package com.example.hostelmanagement.controller;

import com.example.hostelmanagement.service.BookingService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class BookingController {

    @Autowired
    private BookingService bookingService;

    @GetMapping("/bookRoom/{roomId}")
    public String bookRoom(@PathVariable Long roomId,
                           HttpSession session,
                           Model model) {

        String userType = (String) session.getAttribute("userType");
        String userName = (String) session.getAttribute("userName");
        String email = (String) session.getAttribute("userEmail");

        if (email == null) {
            model.addAttribute("error", "Please login first");
            return "login";
        }

        bookingService.bookRoom(userType, userName, email, roomId);

        return "redirect:/booking-history";
    }

    @GetMapping("/booking-history")
    public String bookingHistory(HttpSession session, Model model) {

        String email = (String) session.getAttribute("userEmail");

        if (email == null) {
            return "login";
        }

        model.addAttribute("bookings",
                bookingService.getBookingsByEmail(email));

        return "booking-history";
    }
}