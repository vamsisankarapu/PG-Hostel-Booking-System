<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.example.hostelmanagement.entity.Booking" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booking History</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2>My Booking History</h2>

    <table class="table table-bordered mt-4">
        <thead>
        <tr>
            <th>ID</th>
            <th>User Type</th>
            <th>User Name</th>
            <th>Email</th>
            <th>Room ID</th>
            <th>Booking Date</th>
            <th>Status</th>
        </tr>
        </thead>

        <tbody>
        <%
            List<Booking> bookings =
                    (List<Booking>) request.getAttribute("bookings");

            if (bookings != null) {
                for (Booking booking : bookings) {
        %>

        <tr>
            <td><%= booking.getId() %></td>
            <td><%= booking.getUserType() %></td>
            <td><%= booking.getUserName() %></td>
            <td><%= booking.getEmail() %></td>
            <td><%= booking.getRoom().getId() %></td>
            <td><%= booking.getBookingDate() %></td>
            <td><%= booking.getBookingStatus() %></td>
        </tr>

        <%
                }
            }
        %>
        </tbody>
    </table>
</div>

</body>
</html>