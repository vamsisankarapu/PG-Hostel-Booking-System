package com.example.hostelmanagement.entity;



import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "bookings")
public class Booking {
	
	
	
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    private String userType; // STUDENT / EMPLOYEE
	    private String userName;
	    private String email;

	    @ManyToOne
	    @JoinColumn(name = "room_id")
	    private Room room;

	    private LocalDate bookingDate;
	    private String bookingStatus; // BOOKED / CANCELLED

	   
	  /*  public Booking() {
	    }*/

	   

	    public Long getId() {
	        return id;
	    }

	    public void setId(Long id) {
	        this.id = id;
	    }

	    public String getUserType() {
	        return userType;
	    }

	    public void setUserType(String userType) {
	        this.userType = userType;
	    }

	    public String getUserName() {
	        return userName;
	    }

	    public void setUserName(String userName) {
	        this.userName = userName;
	    }

	    public String getEmail() {
	        return email;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }

	    public Room getRoom() {
	        return room;
	    }

	    public void setRoom(Room room) {
	        this.room = room;
	    }

	    public LocalDate getBookingDate() {
	        return bookingDate;
	    }

	    public void setBookingDate(LocalDate bookingDate) {
	        this.bookingDate = bookingDate;
	    }

	    public String getBookingStatus() {
	        return bookingStatus;
	    }

	    public void setBookingStatus(String bookingStatus) {
	        this.bookingStatus = bookingStatus;
	    }
	}





   /* @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String userType; // STUDENT / EMPLOYEE
    private String userName;
    private String email;

    @ManyToOne
    @JoinColumn(name = "room_id")
    private Room room;

    private LocalDate bookingDate;
    private String bookingStatus; // BOOKED / CANCELLED

    public Booking() {
    }

    public Booking(Long id, String userType, String userName,
                   String email, Room room,
                   LocalDate bookingDate, String bookingStatus) {
        this.id = id;
        this.userType = userType;
        this.userName = userName;
        this.email = email;
        this.room = room;
        this.bookingDate = bookingDate;
        this.bookingStatus = bookingStatus;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public LocalDate getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(LocalDate bookingDate) {
        this.bookingDate = bookingDate;
    }

    public String getBookingStatus() {
        return bookingStatus;
    }

    public void setBookingStatus(String bookingStatus) {
        this.bookingStatus = bookingStatus;
    }*/
	
	