<!--  
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center">Admin Login</h2>


    <form action="adminLogin" method="post">

        <input type="text"
               name="username"
               class="form-control mb-3"
               placeholder="Admin Username"
               required>

        <input type="password"
               name="password"
               class="form-control mb-3"
               placeholder="Admin Password"
               required>

        <button class="btn btn-dark">
            Login
        </button>

    </form>
</div>

</body>
</html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Login</title>
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
      margin-bottom: .3rem;
    }

    .subtitle {
      text-align: center;
      font-size: 13px;
      color: #64748b;
      margin-bottom: 1.5rem;
    }

    .input-group-text {
      background: #f8fafc;
      border-right: none;
      color: #94a3b8;
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

    .btn-login {
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

    .btn-login:hover { opacity: .88; color: #fff; }

    .back-link {
      display: block;
      text-align: center;
      margin-top: 1rem;
      font-size: 13px;
      color: #64748b;
      text-decoration: none;
    }

    .back-link:hover { color: #2563eb; }

    .alert { font-size: 13px; border-radius: 10px; }
  </style>
</head>
<body>

<div class="card">

  <div class="avatar"><i class="fa-solid fa-user-shield"></i></div>
  <h2>Admin Login</h2>
  <p class="subtitle">Restricted access — admins only</p>

  <%
    String error = (String) request.getAttribute("error");
  %>
  <% if (error != null) { %>
    <div class="alert alert-danger"><i class="fa-solid fa-circle-exclamation me-2"></i><%= error %></div>
  <% } %>

  <form action="adminLogin" method="post">

    <div class="input-group mb-3">
      <span class="input-group-text"><i class="fa-solid fa-user"></i></span>
      <input type="text" name="username" class="form-control"
             placeholder="Admin Username" required>
    </div>

    <div class="input-group mb-3">
      <span class="input-group-text"><i class="fa-solid fa-lock"></i></span>
      <input type="password" name="password" class="form-control"
             placeholder="Admin Password" required>
    </div>

    <button type="submit" class="btn btn-login">
      <i class="fa-solid fa-right-to-bracket me-2"></i>Login
    </button>

  </form>

  <a href="/" class="back-link"><i class="fa-solid fa-arrow-left me-1"></i>Back to Home</a>

</div>

</body>
</html>
