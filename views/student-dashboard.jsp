<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5 text-center">
    <h2>Student Dashboard</h2>

    <h4 class="mt-3">
        Welcome, <%= session.getAttribute("userName") %>
    </h4>

    <div class="mt-4">
        <a href="rooms" class="btn btn-primary m-2">
            View Available Rooms
        </a>

        <a href="booking-history" class="btn btn-success m-2">
            Booking History
        </a>

        <a href="/" class="btn btn-dark m-2">
            Logout
        </a>
    </div>
</div>

</body>
</html>