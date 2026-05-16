<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!--     <title>Login</title> -->
<!--     <link rel="stylesheet" -->
<!--           href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> -->
<!-- </head> -->
<!-- <body> -->

<!-- <div class="container mt-5"> -->
<!--     <h2 class="text-center">Login</h2> -->

<%--     <% --%>
//         String error = (String) request.getAttribute("error");
//         String success = (String) request.getAttribute("success");
<%--     %> --%>

<%--     <% if (error != null) { %> --%>
<%--         <div class="alert alert-danger"><%= error %></div> --%>
<%--     <% } %> --%>

<%--     <% if (success != null) { %> --%>
<%--         <div class="alert alert-success"><%= success %></div> --%>
<%--     <% } %> --%>

<!--     <div class="row"> -->

<!--         Student Login -->
<!--         <div class="col-md-6"> -->
<!--             <h4>Student Login</h4> -->
<!--             <form action="studentLogin" method="post"> -->
<!--                 <input type="email" name="email" -->
<!--                        class="form-control mb-2" -->
<!--                        placeholder="Email" required> -->

<!--                 <input type="password" name="password" -->
<!--                        class="form-control mb-2" -->
<!--                        placeholder="Password" required> -->

<!--                 <button class="btn btn-primary"> -->
<!--                     Login as Student -->
<!--                 </button> -->
<!--             </form> -->
<!--         </div> -->

<!--         Employee Login -->
<!--         <div class="col-md-6"> -->
<!--             <h4>Employee Login</h4> -->
<!--             <form action="employeeLogin" method="post"> -->
<!--                 <input type="email" name="email" -->
<!--                        class="form-control mb-2" -->
<!--                        placeholder="Email" required> -->

<!--                 <input type="password" name="password" -->
<!--                        class="form-control mb-2" -->
<!--                        placeholder="Password" required> -->

<!--                 <button class="btn btn-success"> -->
<!--                     Login as Employee -->
<!--                 </button> -->
<!--             </form> -->
<!--         </div> -->

<!--     </div> -->
<!-- </div> -->

<!-- </body> -->
<!-- </html> -->


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      font-family: 'Poppins', sans-serif;
      min-height: 100vh;
      background: linear-gradient(135deg, #0f172a, #2563eb);
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      padding: 2rem 1rem;
    }

    .page-title {
      text-align: center;
      color: #fff;
      font-size: 1.6rem;
      font-weight: 600;
      margin-bottom: .4rem;
    }

    .page-sub {
      text-align: center;
      color: rgba(255,255,255,0.65);
      font-size: 13px;
      margin-bottom: 1.8rem;
    }

    .grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 16px;
      width: 100%;
      max-width: 720px;
    }

    @media (max-width: 600px) { .grid { grid-template-columns: 1fr; } }

    .card {
      background: #fff;
      border-radius: 18px;
      padding: 2rem 1.75rem;
      box-shadow: 0 20px 50px rgba(0,0,0,0.25);
    }

    .card-header-custom {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-bottom: 1.5rem;
    }

    .icon-circle {
      width: 46px; height: 46px; border-radius: 50%;
      display: flex; align-items: center; justify-content: center;
      font-size: 20px; flex-shrink: 0;
    }

    .icon-blue  { background: #eff6ff; color: #2563eb; }
    .icon-green { background: #f0fdf4; color: #16a34a; }

    .card-title {
      font-size: 15px;
      font-weight: 600;
      color: #1e293b;
      margin: 0;
    }

    .card-desc {
      font-size: 12px;
      color: #94a3b8;
      margin: 0;
    }

    .field-label {
      font-size: 11px;
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

    .form-control:focus { box-shadow: none; }

    .input-group.blue:focus-within .input-group-text,
    .input-group.blue:focus-within .form-control  { border-color: #2563eb; }

    .input-group.green:focus-within .input-group-text,
    .input-group.green:focus-within .form-control { border-color: #16a34a; }

    .btn-login {
      width: 100%;
      border: none;
      border-radius: 10px;
      padding: 11px;
      font-size: 14px;
      font-weight: 500;
      margin-top: .5rem;
      transition: opacity .2s;
      color: #fff;
    }
    .btn-login:hover { opacity: .88; color: #fff; }
    .btn-blue-grad  { background: linear-gradient(135deg, #1e3a8a, #2563eb); }
    .btn-green-grad { background: linear-gradient(135deg, #064e3b, #16a34a); }

    .alert { font-size: 13px; border-radius: 10px; max-width: 720px; width: 100%; margin-bottom: 1rem; }

    .back-link {
      display: block;
      text-align: center;
      margin-top: 1.2rem;
      font-size: 13px;
      color: rgba(255,255,255,0.65);
      text-decoration: none;
    }
    .back-link:hover { color: #fff; }
  </style>
</head>
<body>

<%
  String error   = (String) request.getAttribute("error");
  String success = (String) request.getAttribute("success");
%>

<p class="page-title"><i class="fa-solid fa-building me-2"></i>PG Hostel</p>
<p class="page-sub">Choose your login type to continue</p>

<% if (error != null) { %>
  <div class="alert alert-danger"><i class="fa-solid fa-circle-exclamation me-2"></i><%= error %></div>
<% } %>
<% if (success != null) { %>
  <div class="alert alert-success"><i class="fa-solid fa-circle-check me-2"></i><%= success %></div>
<% } %>

<div class="grid">

  <!-- Student Login -->
  <div class="card">
    <div class="card-header-custom">
      <div class="icon-circle icon-blue"><i class="fa-solid fa-user-graduate"></i></div>
      <div>
        <p class="card-title">Student Login</p>
        <p class="card-desc">For registered students</p>
      </div>
    </div>

    <form action="studentLogin" method="post">
      <div class="mb-3">
        <div class="field-label">Email</div>
        <div class="input-group blue">
          <span class="input-group-text"><i class="fa-solid fa-envelope"></i></span>
          <input type="email" name="email" class="form-control"
                 placeholder="student@email.com" required>
        </div>
      </div>
      <div class="mb-3">
        <div class="field-label">Password</div>
        <div class="input-group blue">
          <span class="input-group-text"><i class="fa-solid fa-lock"></i></span>
          <input type="password" name="password" class="form-control"
                 placeholder="Your password" required>
        </div>
      </div>
      <button type="submit" class="btn btn-login btn-blue-grad">
        <i class="fa-solid fa-right-to-bracket me-2"></i>Login as Student
      </button>
    </form>
  </div>

  <!-- Employee Login -->
  <div class="card">
    <div class="card-header-custom">
      <div class="icon-circle icon-green"><i class="fa-solid fa-briefcase"></i></div>
      <div>
        <p class="card-title">Employee Login</p>
        <p class="card-desc">For registered employees</p>
      </div>
    </div>

    <form action="employeeLogin" method="post">
      <div class="mb-3">
        <div class="field-label">Email</div>
        <div class="input-group green">
          <span class="input-group-text"><i class="fa-solid fa-envelope"></i></span>
          <input type="email" name="email" class="form-control"
                 placeholder="employee@company.com" required>
        </div>
      </div>
      <div class="mb-3">
        <div class="field-label">Password</div>
        <div class="input-group green">
          <span class="input-group-text"><i class="fa-solid fa-lock"></i></span>
          <input type="password" name="password" class="form-control"
                 placeholder="Your password" required>
        </div>
      </div>
      <button type="submit" class="btn btn-login btn-green-grad">
        <i class="fa-solid fa-right-to-bracket me-2"></i>Login as Employee
      </button>
    </form>
  </div>

</div>

<a href="/" class="back-link"><i class="fa-solid fa-arrow-left me-1"></i>Back to Home</a>

</body>
</html>
