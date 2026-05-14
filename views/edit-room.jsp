<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.hostelmanagement.entity.Room" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Room</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<%
    Room room = (Room) request.getAttribute("room");
%>

<div class="container mt-5">
    <h2>Edit Room</h2>

    <form action="updateRoom" method="post">

        <input type="hidden" name="id" value="<%= room.getId() %>">

        <input type="text" name="roomType"
               value="<%= room.getRoomType() %>"
               class="form-control mb-2" required>

        <input type="text" name="sharingType"
               value="<%= room.getSharingType() %>"
               class="form-control mb-2" required>

        <input type="number" name="rent"
               value="<%= room.getRent() %>"
               class="form-control mb-2" required>

        <input type="text" name="location"
               value="<%= room.getLocation() %>"
               class="form-control mb-2" required>

        <input type="text" name="facilities"
               value="<%= room.getFacilities() %>"
               class="form-control mb-2" required>

        <button class="btn btn-warning">
            Update Room
        </button>

    </form>
</div>

</body>
</html>