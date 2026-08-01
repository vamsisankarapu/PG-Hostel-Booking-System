<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.example.hostelmanagement.entity.Hostel" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

body{
    background:linear-gradient(135deg,#eef4ff,#dbeafe);
    font-family:Arial, Helvetica, sans-serif;
}

.container{
    margin-top:50px;
}

.card{
    border:none;
    border-radius:15px;
    box-shadow:0 8px 20px rgba(0,0,0,0.15);
}

.card-header{
    background:#2563eb;
    color:white;
    border-radius:15px 15px 0 0 !important;
    text-align:center;
    padding:18px;
}

.table thead{
    background:#1d4ed8;
    color:white;
}

.table tbody tr:hover{
    background:#f1f5ff;
    transition:.3s;
}

.location{
    color:#2563eb;
    font-weight:bold;
}

.capacity{
    color:#16a34a;
    font-weight:bold;
}

.btn-room{
    background:#2563eb;
    color:white;
    padding:12px 25px;
    border-radius:8px;
    text-decoration:none;
    font-weight:bold;
    transition:.3s;
}

.btn-room:hover{
    background:#1d4ed8;
    color:white;
    transform:translateY(-2px);
}

.no-data{
    color:red;
    font-weight:bold;
    text-align:center;
}

</style>

</head>

<body>

<div class="container">

<div class="card">

<div class="card-header">
<h2>
<i class="fa-solid fa-building"></i>
Hostels in Selected Location
</h2>
</div>

<div class="card-body">

<table class="table table-bordered table-hover text-center align-middle">

<thead>
<tr>
<th>ID</th>
<th>Hostel Name</th>
<th>Location</th>
<th>Capacity</th>
</tr>
</thead>

<tbody>

<%
List<Hostel> hostels=(List<Hostel>)request.getAttribute("hostels");

if(hostels!=null && !hostels.isEmpty()){

for(Hostel hostel:hostels){
%>

<tr>

<td>
<strong><%=hostel.getId()%></strong>
</td>

<td>
<i class="fa-solid fa-house text-primary"></i>
<%=hostel.getName()%>
</td>

<td class="location">
<i class="fa-solid fa-location-dot"></i>
<%=hostel.getLocation()%>
</td>

<td class="capacity">
<i class="fa-solid fa-users"></i>
<%=hostel.getCapacity()%>
</td>

</tr>

<%
}

}else{
%>

<tr>
<td colspan="4" class="no-data">
<i class="fa-solid fa-circle-exclamation"></i>
No hostels found for this location.
</td>
</tr>

<%
}
%>

</tbody>

</table>

<div class="text-center mt-4">

<a href="rooms?location=<%=request.getAttribute("searchedLocation")%>"
class="btn-room">

<i class="fa-solid fa-bed"></i>
View Available Rooms

</a>

</div>

</div>

</div>

</div>

</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.example.hostelmanagement.entity.Hostel" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #eef2ff 0%, #e0e7ff 100%);
            min-height: 100vh;
            padding: 40px 20px;
            color: #1e293b;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(37, 99, 235, 0.12);
            padding: 32px;
        }

        h2 {
            text-align: center;
            color: #1e3a8a;
            font-size: 26px;
            margin-bottom: 24px;
            position: relative;
            padding-bottom: 12px;
        }

        h2::after {
            content: "";
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 4px;
            background: #2563eb;
            border-radius: 2px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
        }

        thead tr {
            background: #2563eb;
        }

        th {
            color: #ffffff;
            text-align: left;
            padding: 14px 16px;
            font-weight: 600;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        td {
            padding: 14px 16px;
            border-bottom: 1px solid #e2e8f0;
            font-size: 15px;
        }

        tbody tr {
            background-color: #ffffff;
            transition: background-color 0.2s ease;
        }

        tbody tr:nth-child(even) {
            background-color: #f8fafc;
        }

        tbody tr:hover {
            background-color: #dbeafe;
        }

        td[colspan="4"] {
            text-align: center;
            color: #64748b;
            font-style: italic;
            padding: 24px;
        }

        .card-btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            margin-top: 28px;
            padding: 12px 24px;
            background-color: #2563eb;
            color: #ffffff;
            text-decoration: none;
            font-weight: 600;
            font-size: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(37, 99, 235, 0.25);
            transition: background-color 0.2s ease, transform 0.15s ease;
        }

        .card-btn:hover {
            background-color: #1d4ed8;
            transform: translateY(-2px);
        }

        .card-btn i {
            color: #ffffff !important;
        }

        .btn-wrapper {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Hostels in Selected Location</h2>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Location</th>
                    <th>Capacity</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Hostel> hostels = (List<Hostel>) request.getAttribute("hostels");
                    if (hostels != null && !hostels.isEmpty()) {
                        for (Hostel hostel : hostels) {
                %>
                <tr>
                    <td><%= hostel.getId() %></td>
                    <td><%= hostel.getName() %></td>
                    <td><%= hostel.getLocation() %></td>
                    <td><%= hostel.getCapacity() %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="4">No hostels found for this location.</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <div class="btn-wrapper">
            <a href="rooms?location=<%=request.getAttribute("serachedLocation") %>" class="card-btn">
                <i class="fa-solid fa-bed"></i>
                <span>View Available Rooms</span>
            </a>
        </div>
    </div>
</body>
</html>
