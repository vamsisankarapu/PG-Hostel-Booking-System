<!-- 
<!DOCTYPE html>
<html>
<head>
    <title>PG Hostel Booking System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

   
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

   
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #0f172a, #1e293b, #2563eb);
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .main-wrapper {
            width: 100%;
            max-width: 1100px;
        }

        .main-card {
            background: rgba(255,255,255,0.96);
            border-radius: 28px;
            padding: 55px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.25);
            overflow: hidden;
            position: relative;
        }

        .main-card::before {
            content: "";
            position: absolute;
            top: -80px;
            right: -80px;
            width: 220px;
            height: 220px;
            background: rgba(37, 99, 235, 0.08);
            border-radius: 50%;
        }

        .main-card::after {
            content: "";
            position: absolute;
            bottom: -60px;
            left: -60px;
            width: 180px;
            height: 180px;
            background: rgba(16, 185, 129, 0.08);
            border-radius: 50%;
        }

        .hero-section {
            text-align: center;
            position: relative;
            z-index: 2;
        }

        .icon-box {
            font-size: 64px;
            margin-bottom: 18px;
        }

        .hero-section h1 {
            font-size: 2.8rem;
            font-weight: 800;
            color: #0f172a;
            margin-bottom: 12px;
        }

        .hero-section p {
            font-size: 1.08rem;
            color: #475569;
            line-height: 1.8;
            max-width: 780px;
            margin: 0 auto 40px;
        }

        .feature-strip {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 18px;
            margin-bottom: 40px;
        }

        .feature-box {
            background: #f8fafc;
            border: 1px solid #e2e8f0;
            border-radius: 18px;
            padding: 20px;
            text-align: center;
            transition: 0.3s ease;
        }

        .feature-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.06);
        }

        .feature-box h5 {
            font-size: 16px;
            font-weight: 700;
            margin-bottom: 8px;
            color: #1e293b;
        }

        .feature-box p {
            font-size: 14px;
            color: #64748b;
            margin: 0;
        }

        .btn-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
            gap: 18px;
        }

        .btn-custom {
            padding: 16px;
            border-radius: 16px;
            text-decoration: none;
            color: white;
            font-weight: 600;
            font-size: 15px;
            transition: 0.3s ease;
            box-shadow: 0 10px 20px rgba(0,0,0,0.08);
        }

        .btn-custom:hover {
            transform: translateY(-4px);
            color: white;
        }

        .btn-student {
            background: linear-gradient(to right, #2563eb, #1d4ed8);
        }

        .btn-employee {
            background: linear-gradient(to right, #059669, #047857);
        }

        .btn-login {
            background: linear-gradient(to right, #111827, #1f2937);
        }

        .btn-admin {
            background: linear-gradient(to right, #f97316, #ea580c);
        }

        .footer-note {
            text-align: center;
            margin-top: 35px;
            color: #64748b;
            font-size: 14px;
        }

        @media (max-width: 768px) {
            .main-card {
                padding: 32px 22px;
            }

            .hero-section h1 {
                font-size: 2rem;
            }

            .hero-section p {
                font-size: 15px;
            }
        }
    </style>
</head>
<body>

<div class="main-wrapper">
    <div class="main-card">

        <div class="hero-section">
            <div class="icon-box">🏨</div>

            <h1>PG Hostel Booking System</h1>

            <p>
                A smart and secure accommodation platform for Students and Employees.
                Register, login, explore available PG rooms, book your stay,
                and manage bookings with a smooth real-time experience.
            </p>
        </div>

        <div class="feature-strip">
            <div class="feature-box">
                <h5>Student Module</h5>
                <p>Registration, Login & Room Booking</p>
            </div>

            <div class="feature-box">
                <h5>Employee Module</h5>
                <p>Professional Stay Booking System</p>
            </div>

            <div class="feature-box">
                <h5>Admin Control</h5>
                <p>Manage Rooms & Availability</p>
            </div>

            <div class="feature-box">
                <h5>Booking History</h5>
                <p>Track all reservations easily</p>
            </div>
        </div>

        <div class="btn-grid">
            <a href="student-register" class="btn-custom btn-student">
                Student Registration
            </a>

            <a href="employee-register" class="btn-custom btn-employee">
                Employee Registration
            </a>

            <a href="login" class="btn-custom btn-login">
                User Login
            </a>

            <a href="admin-login" class="btn-custom btn-admin">
                Admin Login
            </a>
        </div>

        <div class="footer-note">
            Spring Boot | MySQL | JPA | JSP | Bootstrap
        </div>

    </div>
</div>

</body>
</html>
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>PG Hostel Booking System</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      font-family: 'Poppins', sans-serif;
      background: #f4f6fb;
      color: #1e293b;
    }

    nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 1rem 2rem;
      background: #fff;
      border-bottom: 1px solid #e2e8f0;
    }

    .brand {
      font-size: 18px;
      font-weight: 600;
      color: #2563eb;
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .nav-links a {
      margin-left: 1.5rem;
      font-size: 14px;
      color: #64748b;
      text-decoration: none;
    }

    .nav-links a:hover { color: #2563eb; }

    .hero {
      text-align: center;
      padding: 4rem 1.5rem 2.5rem;
      background: linear-gradient(135deg, #1e3a8a, #2563eb);
      color: #fff;
    }

    .hero h1 {
      font-size: 2.2rem;
      font-weight: 600;
      margin-bottom: 0.75rem;
    }

    .hero p {
      font-size: 15px;
      max-width: 560px;
      margin: 0 auto;
      opacity: 0.85;
      line-height: 1.8;
    }

    .features {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 16px;
      padding: 2.5rem 2rem;
      max-width: 900px;
      margin: 0 auto;
    }

    .feat {
      background: #fff;
      border: 1px solid #e2e8f0;
      border-radius: 14px;
      padding: 1.5rem 1.25rem;
      text-align: center;
      transition: transform 0.2s, box-shadow 0.2s;
    }

    .feat:hover {
      transform: translateY(-4px);
      box-shadow: 0 8px 20px rgba(0,0,0,0.08);
    }

    .feat i {
      font-size: 28px;
      margin-bottom: 12px;
      display: block;
    }

    .feat h5 {
      font-size: 15px;
      font-weight: 600;
      margin-bottom: 6px;
    }

    .feat p {
      font-size: 13px;
      color: #64748b;
      margin: 0;
    }

    .actions {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
      gap: 12px;
      padding: 0 2rem 3rem;
      max-width: 900px;
      margin: 0 auto;
    }

    .btn-action {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 13px;
      border-radius: 10px;
      font-size: 14px;
      font-weight: 500;
      cursor: pointer;
      text-decoration: none;
      border: none;
      transition: filter 0.15s, transform 0.15s;
    }

    .btn-action:hover { filter: brightness(0.93); transform: scale(0.99); }

    .btn-blue  { background: #2563eb; color: #fff; }
    .btn-green { background: #16a34a; color: #fff; }
    .btn-dark  { background: #1e293b; color: #fff; }
    .btn-amber { background: #f59e0b; color: #fff; }

    footer {
      text-align: center;
      padding: 1.25rem;
      background: #fff;
      border-top: 1px solid #e2e8f0;
      font-size: 12px;
      color: #94a3b8;
    }
  </style>
</head>
<body>

<!-- Navbar -->
<nav>
  <div class="brand"><i class="fa-solid fa-building"></i> PG Hostel</div>
  <div class="nav-links">
    <a href="#features">Features</a>
    <a href="#login">Login</a>
  </div>
</nav>

<!-- Hero Section -->
<section class="hero">
  <h1>Smart PG Hostel Booking</h1>
  <p>Secure, real-time accommodation for students &amp; employees — book rooms, manage stays, and track history seamlessly.</p>
</section>

<!-- Features -->
<section class="features" id="features">
  <div class="feat">
    <i class="fa-solid fa-user-graduate" style="color:#2563eb"></i>
    <h5>Student Module</h5>
    <p>Register, login &amp; book rooms</p>
  </div>
  <div class="feat">
    <i class="fa-solid fa-briefcase" style="color:#16a34a"></i>
    <h5>Employee Module</h5>
    <p>Professional stay booking</p>
  </div>
  <div class="feat">
    <i class="fa-solid fa-screwdriver-wrench" style="color:#f59e0b"></i>
    <h5>Admin Control</h5>
    <p>Manage rooms &amp; availability</p>
  </div>
  <div class="feat">
    <i class="fa-solid fa-clock-rotate-left" style="color:#ef4444"></i>
    <h5>Booking History</h5>
    <p>Track reservations easily</p>
  </div>
</section>

<!-- Action Buttons -->
<section class="actions" id="login">
  <a href="student-register" class="btn-action btn-blue">
    <i class="fa-solid fa-user-plus"></i> Student Registration
  </a>
  <a href="employee-register" class="btn-action btn-green">
    <i class="fa-solid fa-id-badge"></i> Employee Registration
  </a>
  <a href="login" class="btn-action btn-dark">
    <i class="fa-solid fa-right-to-bracket"></i> User Login
  </a>
  <a href="admin-login" class="btn-action btn-amber">
    <i class="fa-solid fa-lock"></i> Admin Login
  </a>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

