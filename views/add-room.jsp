<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Room</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2>Add PG Room</h2>

    <form action="saveRoom" method="post" >

        <input type="text" name="roomType"
               class="form-control mb-2"
               placeholder="Room Type (AC / Non-AC)" required>

        <input type="text" name="sharingType"
               class="form-control mb-2"
               placeholder="Sharing Type (Single / Double / Triple)" required>

        <input type="number" name="rent"
               class="form-control mb-2"
               placeholder="Monthly Rent" required>

        <input type="text" name="location"
               class="form-control mb-2"
               placeholder="Location" required>

        <input type="text" name="facilities"
               class="form-control mb-2"
               placeholder="Facilities (WiFi, Food, Laundry)" required>

        <button class="btn btn-primary">
            Save Room
        </button>
       

    </form>
</div>

</body>
</html>