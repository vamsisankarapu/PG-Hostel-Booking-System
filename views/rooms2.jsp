<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.example.hostelmanagement.entity.Room" %>
<!DOCTYPE html>
<html>
<head>
    <title>Available Rooms</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2>Available PG Rooms</h2>

    <table class="table table-bordered mt-4">
        <thead>
        <tr>
            <th>ID</th>
            <th>Room Type</th>
            <th>Sharing Type</th>
            <th>Rent</th>
            <th>Location</th>
            <th>Facilities</th>
            <th>Action</th>
        </tr>
        </thead>

        <tbody>
        <%
            List<Room> rooms = (List<Room>) request.getAttribute("rooms");

            if (rooms != null) {
                for (Room room : rooms) {
        %>

        <tr>
            <td><%= room.getId() %></td>
            <td><%= room.getRoomType() %></td>
            <td><%= room.getSharingType() %></td>
            <td><%= room.getRent() %></td>
            <td><%= room.getLocation() %></td>
            <td><%= room.getFacilities() %></td>
            <td>
                <a href="bookRoom/<%= room.getId() %>"
                   class="btn btn-success btn-sm">
                    Book Now
                </a>

               
            </td>
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