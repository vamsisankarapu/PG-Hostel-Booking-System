<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!--     <title>Employee Registration</title> -->
<!--     <link rel="stylesheet" -->
<!--           href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> -->
<!-- </head> -->
<!-- <body> -->

<!-- <div class="container mt-5"> -->
<!--     <h2>Employee Registration</h2> -->

<%--     <% --%>
<!--      String error = (String) request.getAttribute("error"); -->
<%--     %> --%>

<%--     <% if (error != null) { %> --%>
<%--         <div class="alert alert-danger"><%= error %></div> --%>
<%--     <% } %> --%>

<!--     <form action="saveEmployee" method="post"> -->

<!--         <input type="text" name="fullName" -->
<!--                class="form-control mb-2" -->
<!--                placeholder="Full Name" required> -->

<!--         <input type="email" name="email" -->
<!--                class="form-control mb-2" -->
<!--                placeholder="Email" required> -->

<!--         <input type="password" name="password" -->
<!--                class="form-control mb-2" -->
<!--                placeholder="Password" required> -->

<!--         <input type="text" name="phone" -->
<!--                class="form-control mb-2" -->
<!--                placeholder="Phone Number" required> -->

<!--         <input type="text" name="companyName" -->
<!--                class="form-control mb-2" -->
<!--                placeholder="Company Name" required> -->

<!--         <select name="gender" class="form-control mb-2"> -->
<!--             <option>Male</option> -->
<!--             <option>Female</option> -->
<!--             <option>Other</option> -->
<!--         </select> -->

<!--         <button class="btn btn-success"> -->
<!--             Register -->
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
  <title>Employee Registration</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      font-family: 'Poppins', sans-serif;
      min-height: 100vh;
      background: linear-gradient(135deg, #064e3b, #16a34a);
      display: flex;
      flex-direction: column;
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
      background: #f0fdf4;
      display: flex; align-items: center; justify-content: center;
      font-size: 26px; color: #16a34a;
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

    .form-control, .form-select {
      border-left: none;
      font-size: 14px;
      padding: .65rem .9rem;
    }

    .form-control:focus, .form-select:focus {
      box-shadow: none;
      border-color: #16a34a;
    }

    .input-group:focus-within .input-group-text {
      border-color: #16a34a;
    }

    .form-select { border-left: 1px solid #dee2e6; border-radius: 8px !important; }
    .form-select:focus { border-color: #16a34a; }

    .btn-register {
      width: 100%;
      background: linear-gradient(135deg, #064e3b, #16a34a);
      color: #fff;
      border: none;
      border-radius: 10px;
      padding: 12px;
      font-size: 15px;
      font-weight: 500;
      margin-top: .5rem;
      transition: opacity .2s;
    }
    .btn-register:hover { opacity: .88; color: #fff; }

    .back-link {
      display: block;
      text-align: center;
      margin-top: 1rem;
      font-size: 13px;
      color: #64748b;
      text-decoration: none;
    }
    .back-link:hover { color: #16a34a; }

    .alert { font-size: 13px; border-radius: 10px; }
  </style>
</head>
<body>

<div class="card">

  <div class="avatar"><i class="fa-solid fa-id-badge"></i></div>
  <h2>Employee Registration</h2>
  <p class="subtitle">Create your employee account to get started</p>

  <%
    String error = (String) request.getAttribute("error");
  %>
  <% if (error != null) { %>
    <div class="alert alert-danger mb-3">
      <i class="fa-solid fa-circle-exclamation me-2"></i><%= error %>
    </div>
  <% } %>

  <form action="saveEmployee" method="post">

    <div class="mb-3">
      <div class="field-label">Full Name</div>
      <div class="input-group">
        <span class="input-group-text"><i class="fa-solid fa-user"></i></span>
        <input type="text" name="fullName" class="form-control"
               placeholder="Your full name" required>
      </div>
    </div>

    <div class="mb-3">
      <div class="field-label">Email</div>
      <div class="input-group">
        <span class="input-group-text"><i class="fa-solid fa-envelope"></i></span>
        <input type="email" name="email" class="form-control"
               placeholder="you@company.com" required>
      </div>
    </div>

    <div class="mb-3">
      <div class="field-label">Password</div>
      <div class="input-group">
        <span class="input-group-text"><i class="fa-solid fa-lock"></i></span>
        <input type="password" name="password" class="form-control"
               placeholder="Create a password" required>
      </div>
    </div>

    <div class="mb-3">
      <div class="field-label">Phone Number</div>
      <div class="input-group">
        <span class="input-group-text"><i class="fa-solid fa-phone"></i></span>
        <input type="text" name="phone" class="form-control"
               placeholder="+91 XXXXX XXXXX" required>
      </div>
    </div>

    <div class="mb-3">
      <div class="field-label">Company Name</div>
      <div class="input-group">
        <span class="input-group-text"><i class="fa-solid fa-building"></i></span>
        <input type="text" name="companyName" class="form-control"
               placeholder="Your company name" required>
      </div>
    </div>

    <div class="mb-4">
      <div class="field-label">Gender</div>
      <select name="gender" class="form-select">
        <option>Male</option>
        <option>Female</option>
        <option>Other</option>
      </select>
    </div>

    <button type="submit" class="btn btn-register">
      <i class="fa-solid fa-user-plus me-2"></i>Register
    </button>

  </form>

  <a href="/" class="back-link"><i class="fa-solid fa-arrow-left me-1"></i>Back to Home</a>

</div>

</body>
</html>
