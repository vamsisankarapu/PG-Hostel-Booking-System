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

<%--                 <a href="editRoom/<%= room.getId() %>" --%>
<!--                    class="btn btn-warning btn-sm"> -->
<!--                     Edit -->
<!--                 </a> -->

<%--                 <a href="deleteRoom/<%= room.getId() %>" --%>
<!--                    class="btn btn-danger btn-sm"> -->
<!--                     Delete -->
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
      max-width: 1100px;
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

    .table-card {
      background: #fff;
      border-radius: 16px;
      border: 1px solid #e2e8f0;
      overflow: hidden;
    }

    table { width: 100%; border-collapse: collapse; }

    thead tr { background: #f8fafc; }

    th {
      font-size: 11px;
      font-weight: 600;
      color: #64748b;
      text-transform: uppercase;
      letter-spacing: .05em;
      padding: 14px 16px;
      border-bottom: 1px solid #e2e8f0;
      white-space: nowrap;
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

    .room-id {
      display: inline-block;
      background: #eff6ff;
      color: #2563eb;
      font-size: 12px;
      font-weight: 600;
      padding: 3px 10px;
      border-radius: 8px;
    }

    .rent-badge {
      display: inline-block;
      background: #f0fdf4;
      color: #16a34a;
      font-size: 12px;
      font-weight: 600;
      padding: 3px 10px;
      border-radius: 8px;
    }

    .tag {
      display: inline-block;
      background: #f8fafc;
      color: #475569;
      font-size: 11px;
      padding: 3px 9px;
      border-radius: 6px;
      border: 1px solid #e2e8f0;
      margin: 2px 2px 2px 0;
    }

    .btn-book {
      background: #16a34a; color: #fff;
      border: none; border-radius: 7px;
      padding: 5px 12px; font-size: 12px;
      font-weight: 500; text-decoration: none;
      transition: opacity .15s; white-space: nowrap;
    }
    .btn-book:hover { opacity: .85; color: #fff; }

    .btn-edit {
      background: #f59e0b; color: #fff;
      border: none; border-radius: 7px;
      padding: 5px 12px; font-size: 12px;
      font-weight: 500; text-decoration: none;
      transition: opacity .15s; white-space: nowrap;
    }
    .btn-edit:hover { opacity: .85; color: #fff; }

    .btn-del {
      background: #ef4444; color: #fff;
      border: none; border-radius: 7px;
      padding: 5px 12px; font-size: 12px;
      font-weight: 500; text-decoration: none;
      transition: opacity .15s; white-space: nowrap;
    }
    .btn-del:hover { opacity: .85; color: #fff; }

    .action-group { display: flex; gap: 6px; flex-wrap: wrap; }

    .empty {
      text-align: center;
      padding: 3rem;
      color: #94a3b8;
      font-size: 14px;
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
  <p>Browse and book your perfect room</p>
</section>

<div class="content">
  <a href="javascript:history.back()" class="back-link">
    <i class="fa-solid fa-arrow-left"></i> Back
  </a>

  <div class="table-card">
    <%
      List<Room> rooms = (List<Room>) request.getAttribute("rooms");
      if (rooms != null && !rooms.isEmpty()) {
    %>
    <table>
      <thead>
        <tr>
          <th>Room</th>
          <th>Type</th>
          <th>Sharing</th>
          <th>Rent / month</th>
          <th>Location</th>
          <th>Facilities</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <% for (Room room : rooms) {
             String[] facilities = room.getFacilities() != null
                                   ? room.getFacilities().split(",") : new String[]{};
        %>
        <tr>
          <td><span class="room-id">#<%= room.getId() %></span></td>
          <td><i class="fa-solid fa-bed me-1" style="color:#2563eb"></i><%= room.getRoomType() %></td>
          <td><i class="fa-solid fa-users me-1" style="color:#64748b"></i><%= room.getSharingType() %></td>
          <td><span class="rent-badge"><i class="fa-solid fa-indian-rupee-sign"></i> <%= room.getRent() %></span></td>
          <td><i class="fa-solid fa-location-dot me-1" style="color:#ef4444"></i><%= room.getLocation() %></td>
          <td>
            <% for (String f : facilities) { %>
              <span class="tag"><%= f.trim() %></span>
            <% } %>
          </td>
          <td>
            <div class="action-group">
              <a href="bookRoom/<%= room.getId() %>" class="btn-book">
                <i class="fa-solid fa-calendar-check me-1"></i>Book
              </a>
              <a href="editRoom/<%= room.getId() %>" class="btn-edit">
                <i class="fa-solid fa-pen me-1"></i>Edit
              </a>
              <a href="deleteRoom/<%= room.getId() %>" class="btn-del"
                 onclick="return confirm('Delete Room #<%= room.getId() %>?')">
                <i class="fa-solid fa-trash me-1"></i>Delete
              </a>
            </div>
          </td>
        </tr>
        <% } %>
      </tbody>
    </table>
    <% } else { %>
    <div class="empty">
      <i class="fa-solid fa-bed"></i>
      No rooms available at the moment.
    </div>
    <% } %>
  </div>
</div>

</body>
</html>
