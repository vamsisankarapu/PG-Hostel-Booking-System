<<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2>Student Registration</h2>

    <%
        String error = (String) request.getAttribute("error");
    %>

    <% if (error != null) { %>
        <div class="alert alert-danger"><%= error %></div>
    <% } %>

    <form action="saveStudent" method="post"> <!-- here we didn't use modelattribute to store the data we have entered in this jsp ,
                                                     then how these data stored ? answer is in Student controller class
                                                        we have mentioned "@ModelAttribute Student student" internally it will create object for student class and set values to the varaibles which are present in student entity class 
                                                          IMP NOTE :  in this jsp page we have written like this " name="fullName" " here this fullName should match with fullName (which is present in student class -->

        <input type="text" name="fullName"
               class="form-control mb-2"
               placeholder="Full Name" required>

        <input type="email" name="email"
               class="form-control mb-2"
               placeholder="Email" required>

        <input type="password" name="password"
               class="form-control mb-2"
               placeholder="Password" required>

        <input type="text" name="phone"
               class="form-control mb-2"
               placeholder="Phone Number" required>

        <input type="text" name="collegeName"
               class="form-control mb-2"
               placeholder="College Name" required>

        <select name="gender" class="form-control mb-2">
            <option>Male</option>
            <option>Female</option>
            <option>Other</option>
        </select>

        <button class="btn btn-primary">
            Register
        </button>

    </form>
</div>

</body>
</html>

