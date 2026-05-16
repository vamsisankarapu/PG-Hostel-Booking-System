<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!--     <title>Student Registration</title> -->
<!--     <link rel="stylesheet" -->
<!--           href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> -->
<!-- </head> -->
<!-- <body> -->

<!-- <div class="container mt-5"> -->
<!--     <h2>Student Registration</h2> -->

<%-- <%--     <% --%> 
<!-- //         String error = (String) request.getAttribute("error"); -->
<%-- <%--     %> --%> 

<%-- <%--     <% if (error != null) { %> --%> 
<%-- <%--         <div class="alert alert-danger"><%= error %></div> --%> 
<%-- <%--     <% } %> --%> 

<!--     <form action="saveStudent" method="post">  here we didn't use modelattribute to store the data we have entered in this jsp , -->
<!--                                                      then how these data stored ? answer is in Student controller class -->
<!--                                                         we have mentioned "@ModelAttribute Student student" internally it will create object for student class and set values to the varaibles which are present in student entity class  -->
<!--                                                           IMP NOTE :  in this jsp page we have written like this " name="fullName" " here this fullName should match with fullName (which is present in student class  -->

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

<!--         <input type="text" name="collegeName" -->
<!--                class="form-control mb-2" -->
<!--                placeholder="College Name" required> -->

<!--         <select name="gender" class="form-control mb-2"> -->
<!--             <option>Male</option> -->
<!--             <option>Female</option> -->
<!--             <option>Other</option> -->
<!--         </select> -->

<!--         <button class="btn btn-primary"> -->
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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Registration · StayNest</title>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,700;1,700&family=DM+Sans:wght@300;400;500&display=swap" rel="stylesheet">
<style>
*{box-sizing:border-box;margin:0;padding:0}
body{min-height:100vh;font-family:'DM Sans',sans-serif;background:#F7F3ED;display:flex;align-items:center;justify-content:center;padding:2rem 1rem}
body::before{content:'';position:fixed;inset:0;background:radial-gradient(circle at 15% 85%,rgba(107,143,113,.09) 0%,transparent 50%),radial-gradient(circle at 85% 15%,rgba(196,113,74,.07) 0%,transparent 50%);pointer-events:none}
.card{position:relative;z-index:1;background:#fff;border-radius:20px;border:1px solid rgba(60,50,40,.12);box-shadow:0 20px 60px rgba(60,50,40,.1);width:100%;max-width:460px;overflow:hidden;animation:up .5s ease both}
@keyframes up{from{opacity:0;transform:translateY(20px)}to{opacity:1;transform:translateY(0)}}
.top{background:#1C1C1E;padding:1.6rem 2rem}
.top h1{font-family:'Playfair Display',serif;font-size:1.6rem;color:#fff;line-height:1.2}
.top h1 em{font-style:italic;color:#E8A882}
.body{padding:1.6rem 2rem}
.err{background:#FEF0EB;border:1px solid rgba(196,113,74,.25);border-radius:10px;padding:.7rem 1rem;margin-bottom:1rem;font-size:.82rem;color:#C4714A}
.row{display:grid;grid-template-columns:1fr 1fr;gap:.7rem}
.f{display:flex;flex-direction:column;gap:4px;margin-bottom:.7rem}
.f label{font-size:.65rem;font-weight:500;text-transform:uppercase;letter-spacing:.06em;color:#7A736B}
input,select{width:100%;background:#FDFAF6;border:1px solid rgba(60,50,40,.13);border-radius:9px;padding:.65rem .9rem;font-family:'DM Sans',sans-serif;font-size:.87rem;color:#1C1C1E;outline:none;transition:border .15s,box-shadow .15s;-webkit-appearance:none}
input::placeholder{color:#C0BAB3;font-weight:300}
input:focus,select:focus{border-color:#1C1C1E;box-shadow:0 0 0 3px rgba(28,28,30,.06);background:#fff}
.divider{display:flex;align-items:center;gap:8px;margin:.2rem 0 .9rem;font-size:.62rem;color:#7A736B;text-transform:uppercase;letter-spacing:.08em}
.divider::before,.divider::after{content:'';flex:1;height:1px;background:rgba(60,50,40,.12)}
button{width:100%;padding:.8rem;background:#1C1C1E;color:#fff;border:none;border-radius:10px;font-family:'DM Sans',sans-serif;font-size:.9rem;font-weight:500;cursor:pointer;margin-top:.3rem;transition:transform .18s,box-shadow .18s;box-shadow:0 4px 16px rgba(28,28,30,.18)}
button:hover{transform:translateY(-2px);box-shadow:0 8px 24px rgba(28,28,30,.25)}
.signin{text-align:center;margin-top:.9rem;font-size:.78rem;color:#7A736B}
.signin a{color:#1C1C1E;font-weight:500;text-decoration:none;border-bottom:1px solid rgba(28,28,30,.2)}
</style>
</head>
<body>
<div class="card">
  <div class="top"><h1>Student <em>Registration</em></h1></div>
  <div class="body">
    
    <form action="saveStudent" method="post">
      <div class="f"><label>Full Name</label><input type="text" name="fullName" placeholder="e.g. Ravi Kumar" required></div>
      <div class="row">
        <div class="f"><label>Email</label><input type="email" name="email" placeholder="you@email.com" required></div>
        <div class="f"><label>Phone</label><input type="text" name="phone" placeholder="+91 9XXXXXXXXX" required></div>
      </div>
      <div class="f"><label>Password</label><input type="password" name="password" placeholder="Create a strong password" required></div>
      <div class="divider">Academic</div>
      <div class="f"><label>College Name</label><input type="text" name="collegeName" placeholder="Your institution" required></div>
      <div class="f"><label>Gender</label>
        <select name="gender"><option value="" disabled selected>Select gender</option><option>Male</option><option>Female</option><option>Other</option></select>
      </div>
      <button type="submit">Create Student Account</button>
    </form>
    <div class="signin">Already registered? <a href="login">Sign in here</a></div>
  </div>
</div>
</body>
</html>
