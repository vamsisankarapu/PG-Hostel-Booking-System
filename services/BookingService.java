package com.example.hostelmanagement.service;

import com.example.hostelmanagement.entity.Booking;
import com.example.hostelmanagement.entity.Room;
import com.example.hostelmanagement.repository.BookingRepository;
import com.example.hostelmanagement.repository.RoomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class BookingService {

    @Autowired
    private BookingRepository bookingRepository;

    @Autowired
    private RoomRepository roomRepository;

    public Booking bookRoom(String userType,
                            String userName,
                            String email,
                            Long roomId) {

        Room room = roomRepository.findById(roomId).orElse(null);

        if (room == null || !room.isAvailable()) {
            return null;
        }

        Booking booking = new Booking();
        booking.setUserType(userType);
        booking.setUserName(userName);
        booking.setEmail(email);
        booking.setRoom(room);
        booking.setBookingDate(LocalDate.now());
        booking.setBookingStatus("BOOKED");

        room.setAvailable(false);
        roomRepository.save(room);

        return bookingRepository.save(booking);
    }

    public List<Booking> getBookingsByEmail(String email) {
        return bookingRepository.findByEmail(email);
    }

    public List<Booking> getAllBookings() {
        return bookingRepository.findAll();
    }
    
    public void vacateRoom(Long bookingId) {

	    Booking booking = bookingRepository.findById(bookingId).orElse(null);

	    if (booking != null) {

	        booking.setBookingStatus("VACATED");

	        Room room = booking.getRoom();
	        room.setAvailable(true);

	        roomRepository.save(room);
	        bookingRepository.save(booking);
	    }
	}
}
