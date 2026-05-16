<%-- <form action="${pageContext.request.contextPath}/vacate" method="post"> --%>

<!--     <input type="number" -->
<!--            name="bookingId" -->
<!--            class="form-control mb-2" -->
<!--            placeholder="Enter Booking ID" -->
<!--            required> -->

<!--     <button class="btn btn-primary"> -->
<!--         Vacate Room -->
<!--     </button> -->

<!-- </form> -->


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Vacate Room</title>
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
      max-width: 400px;
      box-shadow: 0 20px 50px rgba(0,0,0,0.2);
    }

    .avatar {
      width: 64px; height: 64px; border-radius: 50%;
      background: #fff7ed;
      display: flex; align-items: center; justify-content: center;
      font-size: 26px; color: #ea580c;
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
      line-height: 1.6;
    }

    .warning-box {
      background: #fff7ed;
      border: 1px solid #fed7aa;
      border-radius: 10px;
      padding: .75rem 1rem;
      font-size: 13px;
      color: #9a3412;
      margin-bottom: 1.5rem;
      display: flex;
      align-items: flex-start;
      gap: 8px;
    }
    .warning-box i { margin-top: 2px; flex-shrink: 0; }

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
      border-color: #ea580c;
    }

    .input-group:focus-within .input-group-text {
      border-color: #ea580c;
    }

    .btn-vacate {
      width: 100%;
      background: linear-gradient(135deg, #9a3412, #ea580c);
      color: #fff;
      border: none;
      border-radius: 10px;
      padding: 12px;
      font-size: 15px;
      font-weight: 500;
      margin-top: .5rem;
      transition: opacity .2s;
    }
    .btn-vacate:hover { opacity: .88; color: #fff; }

    .back-link {
      display: block;
      text-align: center;
      margin-top: 1rem;
      font-size: 13px;
      color: #64748b;
      text-decoration: none;
    }
    .back-link:hover { color: #ea580c; }
  </style>
</head>
<body>

<div class="card">

  <div class="avatar"><i class="fa-solid fa-door-open"></i></div>
  <h2>Vacate Room</h2>
  <p class="subtitle">Enter your booking ID to vacate and free up the room</p>

  <div class="warning-box">
    <i class="fa-solid fa-triangle-exclamation"></i>
    <span>This action will mark your room as vacated and cannot be undone.</span>
  </div>

  <form action="${pageContext.request.contextPath}/vacate" method="post">

    <div class="mb-4">
      <div class="field-label">Booking ID</div>
      <div class="input-group">
        <span class="input-group-text"><i class="fa-solid fa-hashtag"></i></span>
        <input type="number" name="bookingId" class="form-control"
               placeholder="Enter your booking ID" required>
      </div>
    </div>

    <button type="submit" class="btn btn-vacate"
            onclick="return confirm('Are you sure you want to vacate this room?')">
      <i class="fa-solid fa-door-open me-2"></i>Vacate Room
    </button>

  </form>

  <a href="javascript:history.back()" class="back-link">
    <i class="fa-solid fa-arrow-left me-1"></i>Back
  </a>

</div>

</body>
</html>
