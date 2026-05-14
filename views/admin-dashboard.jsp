<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5 text-center">

    <h2>Admin Dashboard</h2>

    <h4 class="mt-3">
        Welcome Admin,
        <%= session.getAttribute("adminName") %>
    </h4>

    <div class="mt-4">

        <a href="add-room" class="btn btn-primary m-2">
            Add Room
        </a>

        <a href="rooms3" class="btn btn-success m-2">
            View Rooms
        </a>

        <a href="/" class="btn btn-dark m-2">
            Logout
        </a>

    </div>

</div>

</body>
</html>