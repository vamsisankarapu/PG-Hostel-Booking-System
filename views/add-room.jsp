<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!--     <title>Add Room</title> -->
<!--     <link rel="stylesheet" -->
<!--           href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> -->
<!-- </head> -->
<!-- <body> -->

<!-- <div class="container mt-5"> -->
<!--     <h2>Add PG Room</h2> -->

<!--     <form action="saveRoom" method="post" > -->

<!--         <input type="text" name="roomType" -->
<!--                class="form-control mb-2" -->
<!--                placeholder="Room Type (AC / Non-AC)" required> -->

<!--         <input type="text" name="sharingType" -->
<!--                class="form-control mb-2" -->
<!--                placeholder="Sharing Type (Single / Double / Triple)" required> -->

<!--         <input type="number" name="rent" -->
<!--                class="form-control mb-2" -->
<!--                placeholder="Monthly Rent" required> -->

<!--         <input type="text" name="location" -->
<!--                class="form-control mb-2" -->
<!--                placeholder="Location" required> -->

<!--         <input type="text" name="facilities" -->
<!--                class="form-control mb-2" -->
<!--                placeholder="Facilities (WiFi, Food, Laundry)" required> -->

<!--         <button class="btn btn-primary"> -->
<!--             Save Room -->
<!--         </button> -->
       

<!--     </form> -->
<!-- </div> -->

<!-- </body> -->
<!-- </html> -->


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add Room</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      font-family: 'Poppins', sans-serif;
      min-height: 100vh;
      background: linear-gradient(135deg, #1e3a8a, #2563eb);
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 2rem 1rem;
    }

    .card {
      background: #fff;
      border-radius: 18px;
      padding: 2.5rem 2rem;
      width: 100%;
      max-width: 460px;
      box-shadow: 0 20px 50px rgba(0,0,0,0.2);
    }

    .avatar {
      width: 64px; height: 64px; border-radius: 50%;
      background: #eff6ff;
      display: flex; align-items: center; justify-content: center;
      font-size: 26px; color: #2563eb;
      margin: 0 auto 1rem;
    }

    h2 {
      text-align: center;
      font-size: 1.4rem;
      font-weight: 600;
      color: #1e293b;
      margin-bottom: .25rem;
    }

    .subtitle {
      text-align: center;
      font-size: 13px;
      color: #64748b;
      margin-bottom: 1.5rem;
    }

    .field-label {
      font-size: 12px;
      font-weight: 600;
      color: #64748b;
      text-transform: uppercase;
      letter-spacing: .05em;
      margin-bottom: 5px;
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

    .hint {
      font-size: 11px;
      color: #94a3b8;
      margin-top: 4px;
    }

    .btn-save {
      width: 100%;
      background: linear-gradient(135deg, #1e3a8a, #2563eb);
      color: #fff;
      border: none;
      border-radius: 10px;
      padding: 12px;
      font-size: 15px;
      font-weight: 500;
      margin-top: .5rem;
      transition: opacity .2s;
    }
    .btn-save:hover { opacity: .88; color: #fff; }

    .back-link {
      display: block;
      text-align: center;
      margin-top: 1rem;
      font-size: 13px;
      color: #64748b;
      text-decoration: none;
    }
    .back-link:hover { color: #2563eb; }
  </style>
</head>
<body>

<div class="card">

  <div class="avatar"><i class="fa-solid fa-plus"></i></div>
  <h2>Add PG Room</h2>
  <p class="subtitle">Fill in the details to list a new room</p>

  <form action="saveRoom" method="post">

    <div class="mb-3">
      <div class="field-label">Room Type</div>
      <div class="input-group">
        <span class="input-group-text"><i class="fa-solid fa-bed"></i></span>
        <input type="text" name="roomType" class="form-control"
               placeholder="e.g. AC / Non-AC" required>
      </div>
    </div>

    <div class="mb-3">
      <div class="field-label">Sharing Type</div>
      <div class="input-group">
        <span class="input-group-text"><i class="fa-solid fa-users"></i></span>
        <input type="text" name="sharingType" class="form-control"
               placeholder="e.g. Single / Double / Triple" required>
      </div>
    </div>

    <div class="mb-3">
      <div class="field-label">Monthly Rent (₹)</div>
      <div class="input-group">
        <span class="input-group-text"><i class="fa-solid fa-indian-rupee-sign"></i></span>
        <input type="number" name="rent" class="form-control"
               placeholder="e.g. 5000" required>
      </div>
    </div>

    <div class="mb-3">
      <div class="field-label">Location</div>
      <div class="input-group">
        <span class="input-group-text"><i class="fa-solid fa-location-dot"></i></span>
        <input type="text" name="location" class="form-control"
               placeholder="e.g. Vijayawada, Block A" required>
      </div>
    </div>

    <div class="mb-4">
      <div class="field-label">Facilities</div>
      <div class="input-group">
        <span class="input-group-text"><i class="fa-solid fa-wifi"></i></span>
        <input type="text" name="facilities" class="form-control"
               placeholder="e.g. WiFi, Food, Laundry" required>
      </div>
      <p class="hint"><i class="fa-solid fa-circle-info me-1"></i>Separate multiple facilities with commas</p>
    </div>

    <button type="submit" class="btn btn-save">
      <i class="fa-solid fa-floppy-disk me-2"></i>Save Room
    </button>

  </form>

  <a href="javascript:history.back()" class="back-link">
    <i class="fa-solid fa-arrow-left me-1"></i>Back
  </a>

</div>

</body>
</html>
