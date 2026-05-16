
<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> --%>
<%-- <%@ page import="java.util.*, com.example.hostelmanagement.entity.Booking" %> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!--     <title>Booking History</title> -->
<!--     <link rel="stylesheet" -->
<!--           href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> -->
<!-- </head> -->
<!-- <body> -->

<!-- <div class="container mt-5"> -->
<!--     <h2>My Booking History</h2> -->

<!--     <table class="table table-bordered mt-4"> -->
<!--         <thead> -->
<!--         <tr> -->
<!--             <th>ID</th> -->
<!--             <th>User Type</th> -->
<!--             <th>User Name</th> -->
<!--             <th>Email</th> -->
<!--             <th>Room ID</th> -->
<!--             <th>Booking Date</th> -->
<!--             <th>Status</th> -->
<!--         </tr> -->
<!--         </thead> -->

<!--         <tbody> -->
<%--         <% --%>
<!-- //             List<Booking> bookings = -->
<!-- //                     (List<Booking>) request.getAttribute("bookings"); -->

<!-- //             if (bookings != null) { -->
<!-- //                 for (Booking booking : bookings) { -->
<%--         %> --%>

<!--         <tr> -->
<%--             <td><%= booking.getId() %></td> --%>
<%--             <td><%= booking.getUserType() %></td> --%>
<%--             <td><%= booking.getUserName() %></td> --%>
<%--             <td><%= booking.getEmail() %></td> --%>
<%--             <td><%= booking.getRoom().getId() %></td> --%>
<%--             <td><%= booking.getBookingDate() %></td> --%>
<%--             <td><%= booking.getBookingStatus() %></td> --%>
<!--         </tr> -->

<%--         <% --%>
<!-- //                 } -->
<!-- //             } -->
<%--         %> --%>
<!--         </tbody> -->
<!--     </table> -->
<!-- </div> -->

<!-- </body> -->
<!-- </html>  -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.example.hostelmanagement.entity.Booking" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Booking History</title>
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
      max-width: 1000px;
      margin: 2rem auto;
      padding: 0 1.5rem;
    }

    .table-card {
      background: #fff;
      border-radius: 16px;
      border: 1px solid #e2e8f0;
      overflow: hidden;
    }

    table { width: 100%; border-collapse: collapse; }

    thead tr { background: #f8fafc; }

    th {
      font-size: 12px;
      font-weight: 600;
      color: #64748b;
      text-transform: uppercase;
      letter-spacing: .05em;
      padding: 14px 16px;
      border-bottom: 1px solid #e2e8f0;
    }

    td {
      font-size: 13px;
      color: #1e293b;
      padding: 13px 16px;
      border-bottom: 1px solid #f1f5f9;
      vertical-align: middle;
    }

    tbody tr:last-child td { border-bottom: none; }
    tbody tr:hover { background: #f8fafc; }

    .badge-status {
      display: inline-block;
      padding: 4px 12px;
      border-radius: 20px;
      font-size: 12px;
      font-weight: 500;
    }
    .status-confirmed { background: #dcfce7; color: #16a34a; }
    .status-pending   { background: #fef9c3; color: #ca8a04; }
    .status-cancelled { background: #fee2e2; color: #dc2626; }

    .empty {
      text-align: center;
      padding: 3rem;
      color: #94a3b8;
      font-size: 14px;
    }
    .empty i { font-size: 40px; display: block; margin-bottom: 1rem; }

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
  </style>
</head>
<body>

<nav>
  <div class="brand"><i class="fa-solid fa-building"></i> PG Hostel</div>
  <span style="font-size:13px; color:#64748b;">My Bookings</span>
</nav>

<section class="hero">
  <h2><i class="fa-solid fa-clock-rotate-left me-2"></i>Booking History</h2>
  <p>All your past and current room reservations</p>
</section>

<div class="content">
  <a href="javascript:history.back()" class="back-link">
    <i class="fa-solid fa-arrow-left"></i> Back
  </a>

  <div class="table-card">
    <%
      List<Booking> bookings = (List<Booking>) request.getAttribute("bookings");
      if (bookings != null && !bookings.isEmpty()) {
    %>
    <table>
      <thead>
        <tr>
          <th>#</th>
          <th>User Type</th>
          <th>Name</th>
          <th>Email</th>
          <th>Room ID</th>
          <th>Booking Date</th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody>
        <% for (Booking booking : bookings) {
             String status = booking.getBookingStatus() != null ? booking.getBookingStatus().toString() : "";
             String badgeClass = status.equalsIgnoreCase("CONFIRMED") ? "status-confirmed"
                               : status.equalsIgnoreCase("PENDING")   ? "status-pending"
                               : "status-cancelled";
        %>
        <tr>
          <td><strong><%= booking.getId() %></strong></td>
          <td><%= booking.getUserType() %></td>
          <td><i class="fa-solid fa-user me-1" style="color:#2563eb"></i><%= booking.getUserName() %></td>
          <td><i class="fa-solid fa-envelope me-1" style="color:#64748b"></i><%= booking.getEmail() %></td>
          <td><span style="background:#eff6ff;color:#2563eb;padding:3px 10px;border-radius:8px;font-size:12px;font-weight:500;">Room <%= booking.getRoom().getId() %></span></td>
          <td><i class="fa-regular fa-calendar me-1" style="color:#64748b"></i><%= booking.getBookingDate() %></td>
          <td><span class="badge-status <%= badgeClass %>"><%= status %></span></td>
        </tr>
        <% } %>
      </tbody>
    </table>
    <% } else { %>
    <div class="empty">
      <i class="fa-solid fa-calendar-xmark" style="color:#cbd5e1"></i>
      No bookings found.
    </div>
    <% } %>
  </div>
</div>

</body>
</html>
