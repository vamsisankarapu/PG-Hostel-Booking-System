<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> --%>
<%-- <%@ page import="java.util.*, com.example.hostelmanagement.entity.Room" %> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!--     <title>Available Rooms</title> -->
<!--     <link rel="stylesheet" -->
<!--           href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> -->
<!-- </head> -->
<!-- <body> -->

<!-- <div class="container mt-5"> -->
<!--     <h2>Available PG Rooms</h2> -->

<!--     <table class="table table-bordered mt-4"> -->
<!--         <thead> -->
<!--         <tr> -->
<!--             <th>ID</th> -->
<!--             <th>Room Type</th> -->
<!--             <th>Sharing Type</th> -->
<!--             <th>Rent</th> -->
<!--             <th>Location</th> -->
<!--             <th>Facilities</th> -->
<!--             <th>Action</th> -->
<!--         </tr> -->
<!--         </thead> -->

<!--         <tbody> -->
<%--         <% --%>
<!-- //             List<Room> rooms = (List<Room>) request.getAttribute("rooms"); -->

<!-- //             if (rooms != null) { -->
<!-- //                 for (Room room : rooms) { -->
<%--         %> --%>

<!--         <tr> -->
<%--             <td><%= room.getId() %></td> --%>
<%--             <td><%= room.getRoomType() %></td> --%>
<%--             <td><%= room.getSharingType() %></td> --%>
<%--             <td><%= room.getRent() %></td> --%>
<%--             <td><%= room.getLocation() %></td> --%>
<%--             <td><%= room.getFacilities() %></td> --%>
<!--             <td> -->
<%--                 <a href="bookRoom/<%= room.getId() %>" --%>
<!--                    class="btn btn-success btn-sm"> -->
<!--                     Book Now -->
<!--                 </a> -->

               
<!--             </td> -->
<!--         </tr> -->

<%--         <% --%>
<!-- //                 } -->
<!-- //             } -->
<%--         %> --%>
<!--         </tbody> -->
<!--     </table> -->
<!-- </div> -->

<!-- </body> -->
<!-- </html> -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.example.hostelmanagement.entity.Room" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Available Rooms</title>
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
      max-width: 1050px;
      margin: 2rem auto;
      padding: 0 1.5rem 3rem;
    }

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

    /* Room Cards Grid */
    .rooms-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
      gap: 16px;
    }

    .room-card {
      background: #fff;
      border: 1px solid #e2e8f0;
      border-radius: 16px;
      padding: 1.5rem;
      transition: transform .2s, box-shadow .2s;
    }
    .room-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 10px 25px rgba(0,0,0,0.09);
    }

    .room-card-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 1rem;
    }

    .room-id {
      background: #eff6ff;
      color: #2563eb;
      font-size: 12px;
      font-weight: 600;
      padding: 4px 12px;
      border-radius: 8px;
    }

    .rent-badge {
      background: #f0fdf4;
      color: #16a34a;
      font-size: 13px;
      font-weight: 600;
      padding: 4px 12px;
      border-radius: 8px;
    }

    .room-info { margin-bottom: 1rem; }

    .info-row {
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 13px;
      color: #475569;
      padding: 5px 0;
      border-bottom: 1px solid #f1f5f9;
    }
    .info-row:last-child { border-bottom: none; }
    .info-row i { width: 16px; text-align: center; }

    .facilities-wrap { display: flex; flex-wrap: wrap; gap: 5px; margin: .75rem 0 1rem; }
    .tag {
      background: #f8fafc;
      color: #475569;
      font-size: 11px;
      padding: 3px 9px;
      border-radius: 6px;
      border: 1px solid #e2e8f0;
    }

    .btn-book {
      display: block;
      width: 100%;
      background: linear-gradient(135deg, #064e3b, #16a34a);
      color: #fff;
      border: none;
      border-radius: 10px;
      padding: 10px;
      font-size: 14px;
      font-weight: 500;
      text-align: center;
      text-decoration: none;
      transition: opacity .2s;
    }
    .btn-book:hover { opacity: .88; color: #fff; }

    .empty {
      text-align: center;
      padding: 3rem;
      color: #94a3b8;
      font-size: 14px;
      background: #fff;
      border-radius: 16px;
      border: 1px solid #e2e8f0;
    }
    .empty i { font-size: 40px; display: block; margin-bottom: 1rem; color: #cbd5e1; }
  </style>
</head>
<body>

<nav>
  <div class="brand"><i class="fa-solid fa-building"></i> PG Hostel</div>
  <span style="font-size:13px; color:#64748b;">Available Rooms</span>
</nav>

<section class="hero">
  <h2><i class="fa-solid fa-bed me-2"></i>Available PG Rooms</h2>
  <p>Find and book your perfect room today</p>
</section>

<div class="content">
  <a href="javascript:history.back()" class="back-link">
    <i class="fa-solid fa-arrow-left"></i> Back
  </a>

  <%
    List<Room> rooms = (List<Room>) request.getAttribute("rooms");
    if (rooms != null && !rooms.isEmpty()) {
  %>
  <div class="rooms-grid">
    <% for (Room room : rooms) {
         String[] facilities = room.getFacilities() != null
                               ? room.getFacilities().split(",") : new String[]{};
    %>
    <div class="room-card">

      <div class="room-card-header">
        <span class="room-id"><i class="fa-solid fa-door-open me-1"></i>Room #<%= room.getId() %></span>
        <span class="rent-badge"><i class="fa-solid fa-indian-rupee-sign"></i> <%= room.getRent() %> / mo</span>
      </div>

      <div class="room-info">
        <div class="info-row">
          <i class="fa-solid fa-bed" style="color:#2563eb"></i>
          <span><strong>Type:</strong> <%= room.getRoomType() %></span>
        </div>
        <div class="info-row">
          <i class="fa-solid fa-users" style="color:#7c3aed"></i>
          <span><strong>Sharing:</strong> <%= room.getSharingType() %></span>
        </div>
        <div class="info-row">
          <i class="fa-solid fa-location-dot" style="color:#ef4444"></i>
          <span><strong>Location:</strong> <%= room.getLocation() %></span>
        </div>
      </div>

      <div class="facilities-wrap">
        <% for (String f : facilities) { %>
          <span class="tag"><i class="fa-solid fa-circle-check" style="color:#16a34a; font-size:10px"></i> <%= f.trim() %></span>
        <% } %>
      </div>

      <a href="bookRoom/<%= room.getId() %>" class="btn-book">
        <i class="fa-solid fa-calendar-check me-2"></i>Book Now
      </a>

    </div>
    <% } %>
  </div>
  <% } else { %>
  <div class="empty">
    <i class="fa-solid fa-bed"></i>
    No rooms available at the moment. Please check back later.
  </div>
  <% } %>
</div>

</body>
</html>
