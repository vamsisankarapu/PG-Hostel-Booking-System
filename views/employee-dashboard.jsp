<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!--     <title>Employee Dashboard</title> -->
<!--     <link rel="stylesheet" -->
<!--           href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> -->
<!-- </head> -->
<!-- <body> -->

<!-- <div class="container mt-5 text-center"> -->
<!--     <h2>Employee Dashboard</h2> -->

<!--     <h4 class="mt-3"> -->
<%--         Welcome, <%= session.getAttribute("userName") %> --%>
<!--     </h4> -->

<!--     <div class="mt-4"> -->
<!--         <a href="rooms" class="btn btn-primary m-2"> -->
<!--             View Available Rooms -->
<!--         </a> -->

<!--         <a href="booking-history" class="btn btn-success m-2"> -->
<!--             Booking History -->
<!--         </a> -->

<!--         <a href="/" class="btn btn-dark m-2"> -->
<!--             Logout -->
<!--         </a> -->
<!--     </div> -->
<!-- </div> -->

<!-- </body> -->
<!-- </html> -->


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Employee Dashboard</title>
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
    .brand { font-size: 17px; font-weight: 600; color: #16a34a; }

    .hero {
      background: linear-gradient(135deg, #064e3b, #16a34a);
      color: #fff;
      padding: 3rem 1rem 2.5rem;
      text-align: center;
    }

    .avatar {
      width: 68px; height: 68px; border-radius: 50%;
      background: rgba(255,255,255,0.2);
      display: flex; align-items: center; justify-content: center;
      font-size: 28px;
      margin: 0 auto 1rem;
    }

    .hero h2 { font-size: 1.8rem; font-weight: 600; margin-bottom: .3rem; }
    .hero p  { font-size: 14px; opacity: .85; margin: 0; }

    .cards {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
      gap: 14px;
      max-width: 680px;
      margin: 2rem auto;
      padding: 0 1.5rem;
    }

    .card-btn {
      background: #fff;
      border: 1px solid #e2e8f0;
      border-radius: 14px;
      padding: 1.75rem 1rem;
      text-align: center;
      text-decoration: none;
      color: #1e293b;
      display: block;
      transition: transform .2s, box-shadow .2s;
    }
    .card-btn:hover {
      transform: translateY(-4px);
      box-shadow: 0 8px 20px rgba(0,0,0,0.09);
      color: #1e293b;
    }
    .card-btn i { font-size: 28px; display: block; margin-bottom: 10px; }
    .card-btn span { font-size: 14px; font-weight: 500; }

    .logout {
      text-align: center;
      margin: .5rem 0 3rem;
    }
    .logout a {
      font-size: 14px;
      color: #64748b;
      text-decoration: none;
      border: 1px solid #e2e8f0;
      padding: 8px 24px;
      border-radius: 8px;
      background: #fff;
      transition: background .15s;
    }
    .logout a:hover { background: #f1f5f9; }
  </style>
</head>
<body>

<nav>
  <div class="brand"><i class="fa-solid fa-building"></i> PG Hostel</div>
  <span style="font-size:13px; color:#64748b;">Employee Portal</span>
</nav>

<section class="hero">
  <div class="avatar"><i class="fa-solid fa-briefcase"></i></div>
  <h2>Employee Dashboard</h2>
  <p>Welcome back, <strong><%= session.getAttribute("userName") %></strong></p>
</section>

<div class="cards">
  <a href="rooms" class="card-btn">
    <i class="fa-solid fa-bed" style="color:#2563eb"></i>
    <span>View Available Rooms</span>
  </a>
  <a href="booking-history" class="card-btn">
    <i class="fa-solid fa-clock-rotate-left" style="color:#16a34a"></i>
    <span>Booking History</span>
  </a>
</div>

<div class="logout">
  <a href="/"><i class="fa-solid fa-right-from-bracket me-1"></i>Logout</a>
</div>

</body>
</html>
