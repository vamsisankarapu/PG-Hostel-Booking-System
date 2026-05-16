<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> --%>
<%-- <%@ page import="com.example.hostelmanagement.entity.Room" %> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!--     <title>Edit Room</title> -->
<!--     <link rel="stylesheet" -->
<!--           href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> -->
<!-- </head> -->
<!-- <body> -->

<%-- <% --%>
//     Room room = (Room) request.getAttribute("room");
<%-- %> --%>

<!-- <div class="container mt-5"> -->
<!--     <h2>Edit Room</h2> -->

<!--    <!--   <form action="updateRoom" method="post"> --> -->
<%--   <form action="${pageContext.request.contextPath}/updateRoom" method="post"> --%>
  

<%--         <input type="hidden" name="id" value="<%= room.getId() %>"> --%>
<!--         <input type="hidden" name="available" -->
<%--        value="<%= room.isAvailable() %>"> --%>

<!--         <input type="text" name="roomType" -->
<%--                value="<%= room.getRoomType() %>" --%>
<!--                class="form-control mb-2" required> -->

<!--         <input type="text" name="sharingType" -->
<%--                value="<%= room.getSharingType() %>" --%>
<!--                class="form-control mb-2" required> -->

<!--         <input type="number" name="rent" -->
<%--                value="<%= room.getRent() %>" --%>
<!--                class="form-control mb-2" required> -->

<!--         <input type="text" name="location" -->
<%--                value="<%= room.getLocation() %>" --%>
<!--                class="form-control mb-2" required> -->

<!--         <input type="text" name="facilities" -->
<%--                value="<%= room.getFacilities() %>" --%>
<!--                class="form-control mb-2" required> -->

<!--         <button class="btn btn-warning"> -->
<!--             Update Room -->
<!--         </button> -->

<!--     </form> -->
<!-- </div> -->

<!-- </body> -->
<!-- </html> -->


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.hostelmanagement.entity.Room" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Edit Room</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }

    body { font-family: 'Poppins', sans-serif; background: #f4f6fb; }

    nav {
      background: #fff;
      padding: .9rem 2rem;
      border-bottom: 1px solid #e2e8f0;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    .brand { font-size: 17px; font-weight: 600; color: #2563eb; }

    .hero {
      background: linear-gradient(135deg, #1e3a8a, #2563eb);
      color: #fff;
      padding: 2.5rem 2rem 2rem;
      text-align: center;
    }
    .hero h2 { font-size: 1.7rem; font-weight: 600; margin-bottom: .3rem; }
    .hero p  { font-size: 13px; opacity: .8; margin: 0; }

    .content {
      max-width: 520px;
      margin: 2rem auto;
      padding: 0 1.5rem 3rem;
    }

    .form-card {
      background: #fff;
      border-radius: 16px;
      border: 1px solid #e2e8f0;
      padding: 2rem;
    }

    .field-label {
      font-size: 12px;
      font-weight: 600;
      color: #64748b;
      text-transform: uppercase;
      letter-spacing: .05em;
      margin-bottom: 6px;
    }

    .input-group-text {
      background: #f8fafc;
      border-right: none;
      color: #94a3b8;
      font-size: 14px;
    }

    .form-control {
      border-left: none;
      font-size: 14px;
      padding: .65rem .9rem;
    }

    .form-control:focus {
      box-shadow: none;
      border-color: #2563eb;
    }

    .input-group:focus-within .input-group-text {
      border-color: #2563eb;
    }

    .btn-update {
      width: 100%;
      background: linear-gradient(135deg, #d97706, #f59e0b);
      color: #fff;
      border: none;
      border-radius: 10px;
      padding: 12px;
      font-size: 15px;
      font-weight: 500;
      margin-top: .5rem;
      transition: opacity .2s;
    }
    .btn-update:hover { opacity: .88; color: #fff; }

    .back-link {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      margin-bottom: 1rem;
      font-size: 13px;
      color: #64748b;
      text-decoration: none;
    }
    .back-link:hover { color: #2563eb; }

    .room-id-badge {
      display: inline-block;
      background: #eff6ff;
      color: #2563eb;
      font-size: 12px;
      font-weight: 600;
      padding: 4px 14px;
      border-radius: 20px;
      margin-bottom: 1.5rem;
    }
  </style>
</head>
<body>

<%
  Room room = (Room) request.getAttribute("room");
%>

<nav>
  <div class="brand"><i class="fa-solid fa-building"></i> PG Hostel</div>
  <span style="font-size:13px; color:#64748b;">Admin Panel</span>
</nav>

<section class="hero">
  <h2><i class="fa-solid fa-pen-to-square me-2"></i>Edit Room</h2>
  <p>Update the details for this room</p>
</section>

<div class="content">
  <a href="javascript:history.back()" class="back-link">
    <i class="fa-solid fa-arrow-left"></i> Back
  </a>

  <div class="form-card">
    <div class="room-id-badge"><i class="fa-solid fa-door-open me-1"></i>Room ID: <%= room.getId() %></div>

    <form action="${pageContext.request.contextPath}/updateRoom" method="post">
      <input type="hidden" name="id" value="<%= room.getId() %>">
      <input type="hidden" name="available" value="<%= room.isAvailable() %>">

      <div class="mb-3">
        <div class="field-label">Room Type</div>
        <div class="input-group">
          <span class="input-group-text"><i class="fa-solid fa-bed"></i></span>
          <input type="text" name="roomType" value="<%= room.getRoomType() %>"
                 class="form-control" placeholder="e.g. Single, Double" required>
        </div>
      </div>

      <div class="mb-3">
        <div class="field-label">Sharing Type</div>
        <div class="input-group">
          <span class="input-group-text"><i class="fa-solid fa-users"></i></span>
          <input type="text" name="sharingType" value="<%= room.getSharingType() %>"
                 class="form-control" placeholder="e.g. Single, Twin" required>
        </div>
      </div>

      <div class="mb-3">
        <div class="field-label">Rent (₹ / month)</div>
        <div class="input-group">
          <span class="input-group-text"><i class="fa-solid fa-indian-rupee-sign"></i></span>
          <input type="number" name="rent" value="<%= room.getRent() %>"
                 class="form-control" placeholder="Monthly rent" required>
        </div>
      </div>

      <div class="mb-3">
        <div class="field-label">Location</div>
        <div class="input-group">
          <span class="input-group-text"><i class="fa-solid fa-location-dot"></i></span>
          <input type="text" name="location" value="<%= room.getLocation() %>"
                 class="form-control" placeholder="Room location" required>
        </div>
      </div>

      <div class="mb-4">
        <div class="field-label">Facilities</div>
        <div class="input-group">
          <span class="input-group-text"><i class="fa-solid fa-wifi"></i></span>
          <input type="text" name="facilities" value="<%= room.getFacilities() %>"
                 class="form-control" placeholder="e.g. WiFi, AC, Laundry" required>
        </div>
      </div>

      <button type="submit" class="btn btn-update">
        <i class="fa-solid fa-floppy-disk me-2"></i>Update Room
      </button>
    </form>
  </div>
</div>

</body>
</html>
