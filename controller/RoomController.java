package com.example.hostelmanagement.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.hostelmanagement.entity.Room;
import com.example.hostelmanagement.service.BookingService;
import com.example.hostelmanagement.service.RoomService;

@Controller
public class RoomController {

    @Autowired
    private RoomService roomService;
    @Autowired
    private BookingService bookingService;

   /* @PostMapping("/saveRoom")
    public String saveRoom(@ModelAttribute Room room) {
        room.setAvailable(true);
        roomService.addRoom(room);
        return "redirect:/rooms";
        
    }*/
    
    @PostMapping("/saveRoom")
    public String saveRoom(@ModelAttribute Room room, Model model) {

        room.setAvailable(true);
        roomService.addRoom(room);

        model.addAttribute("rooms", roomService.getAvailableRooms());

        return "rooms";
    }
    
    @GetMapping("/rooms3")
    public String viewRooms3(Model model) {
        model.addAttribute("rooms", roomService.getAvailableRooms());
        return "rooms";
    }


    @GetMapping("/rooms")
    public String viewRooms(Model model) {
        model.addAttribute("rooms", roomService.getAvailableRooms());
        return "rooms2";
    }

    @GetMapping("/editRoom/{id}")
    public String editRoom(@PathVariable Long id, Model model) {
        model.addAttribute("room", roomService.getRoomById(id));
        return "edit-room";
    }

    @PostMapping("/updateRoom")
    public String updateRoom(@ModelAttribute Room room) {
        roomService.updateRoom(room);
        //return "redirect:/rooms3";
        return "redirect:/rooms";
    }
    
   
    @PostMapping("/vacate")
    public String vacateRoom(@RequestParam Long bookingId) {

        bookingService.vacateRoom(bookingId);

        return "redirect:/rooms3";
    }
    @GetMapping("/deleteRoom/{id}")
    public String deleteRoom(@PathVariable Long id) {
        roomService.deleteRoom(id);
        return "redirect:/rooms3";
    }
}
