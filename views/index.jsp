<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>PG Hostel Booking System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #1d2671, #c33764);
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .main-card {
            background: rgba(255, 255, 255, 0.95);
            padding: 50px;
            border-radius: 25px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.2);
            max-width: 850px;
            width: 100%;
            text-align: center;
        }

        .main-card h1 {
            font-size: 2.5rem;
            font-weight: 700;
            color: #1d2671;
            margin-bottom: 15px;
        }

        .main-card p {
            font-size: 1.1rem;
            color: #555;
            margin-bottom: 35px;
        }

        .btn-custom {
            width: 240px;
            padding: 14px;
            margin: 12px;
            border: none;
            border-radius: 12px;
            font-size: 16px;
            font-weight: 600;
            transition: 0.3s ease;
            text-decoration: none;
            display: inline-block;
            color: white;
        }

        .btn-student {
            background: #0d6efd;
        }

        .btn-employee {
            background: #198754;
        }

        .btn-login {
            background: #212529;
        }

        .btn-admin {
            background: #fd7e14;
        }

        .btn-custom:hover {
            transform: translateY(-4px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.15);
            color: white;
        }

        .icon-box {
            font-size: 60px;
            margin-bottom: 20px;
        }

        @media (max-width: 768px) {
            .main-card {
                padding: 30px 20px;
            }

            .main-card h1 {
                font-size: 2rem;
            }

            .btn-custom {
                width: 100%;
                margin: 10px 0;
            }
        }
    </style>
</head>
<body>

<div class="main-card">

    <div class="icon-box">🏨</div>

    <h1>PG Hostel Booking System</h1>

    <p>
        Welcome to the Student & Employee PG Hostel Booking Portal.<br>
        Register, Login, Explore Available Rooms, and Book Your Stay Easily.
    </p>

    <div>
        <a href="student-register" class="btn-custom btn-student">
            Student Register
        </a>

        <a href="employee-register" class="btn-custom btn-employee">
            Employee Register
        </a>

        <a href="login" class="btn-custom btn-login">
            User Login
        </a>

        <a href="admin-login" class="btn-custom btn-admin">
            Admin Login
        </a>
    </div>

</div>

</body>
</html>
