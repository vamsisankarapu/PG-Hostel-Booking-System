

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.example.hostelmanagement.entity.Hostel" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
</head>
<body>
    <h2>Hostels in Selected Location</h2>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Location</th>
            <th>Capacity</th>
        </tr>
        <%
            List<Hostel> hostels = (List<Hostel>) request.getAttribute("hostels");
            if (hostels != null && !hostels.isEmpty()) {
                for (Hostel hostel : hostels) {
        %>
        <tr>
            <td><%= hostel.getId() %></td>
            <td><%= hostel.getName() %></td>
            <td><%= hostel.getLocation() %></td>
            <td><%= hostel.getCapacity() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="4">No hostels found for this location.</td>
        </tr>
        <%
            }
        %>
    </table>
    <a href="rooms?location=<%=request.getAttribute("searchedLocation") %>" class="card-btn">
    <i class="fa-solid fa-bed" style="color:#2563eb"></i>
    <span>View Available Rooms</span>
  </a>
</body>
</html>