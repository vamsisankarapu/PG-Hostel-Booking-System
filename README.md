# PG-Hostel-Booking-System

Overview

The PG Hostel Booking System is a Spring Boot-based web application developed to simplify the process of finding and booking PG accommodations for students and employees. The application provides an easy way to manage hostel listings, room availability, and bookings through a user-friendly interface.

Features

- User Registration and Login
- Admin Dashboard
- Add, Update and Delete PG/Hostel Details
- View Available Rooms
- Book a Room
- Cancel Booking
- Manage User and Booking Details
- Search and Filter PGs
- Responsive and User-Friendly Interface

Tech Stack

Backend

- Java
- Spring Boot
- Spring Data JPA

Database

- MySQL

Build Tool

- Maven

IDE

- Spring Tool Suite (STS)

Version Control

- Git
- GitHub

Project Architecture

The project follows a layered architecture:

- Controller – Handles client requests and responses.
- Service – Contains business logic.
- Repository – Performs database operations using Spring Data JPA.
- Entity – Represents database tables.
- Database (MySQL) – Stores application data.

Database Modules

- Users
- PG/Hostel Details
- Rooms
- Bookings

Project Workflow

1. User registers or logs in.
2. User browses available PG accommodations.
3. User views room details and availability.
4. User books a room.
5. Booking details are stored in the MySQL database.
6. Admin manages PG listings, rooms, and bookings.

Getting Started

Prerequisites

- Java 17 (or your project version)
- Spring Boot
- MySQL
- Maven
- Git

Installation

1. Clone the repository.
2. Open the project in your IDE.
3. Configure the MySQL database in "application.properties".
4. Create the required database.
5. Run the Spring Boot application.
6. Access the application.

Folder Structure

src
 ├── controller
 ├── service
 ├── repository
 ├── entity
 └── webapp
      └── WEB-INF
           └── views

Future Enhancements

- Spring Security with JWT Authentication
- Email Notifications
- Password Encryption
- Payment Gateway Integration
- Image Upload for PG Listings
- Pagination and Sorting
- Docker Deployment
- Cloud Deployment (AWS/Azure)

Learning Outcomes

Through this project, I gained practical experience in:

- Developing RESTful applications using Spring Boot
- Building CRUD operations
- Using Spring Data JPA with MySQL
- Implementing layered architecture
- Managing relational databases
- Version control using Git and GitHub
- Debugging and testing backend applications

Author

Vamsi

MCA Graduate | Java Backend Developer

If you found this project useful, feel free to star the repository.
