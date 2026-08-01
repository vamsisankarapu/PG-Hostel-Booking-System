<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hostel Location Search</title>
</head>
<body>
    <h2>Search Hostels by Location</h2>
    
    <form action="searchHostel" method="get">
        <label for="location">Choose Location:</label>
        <input list="locationOptions" name="location" id="location" placeholder="Enter location..." required>
        
        <datalist id="locationOptions">
            <option value="Gajuwaka">
            <option value="Madhuravada">
            <option value="Rushikonda">
            <option value="Dwaraka Nagar">
            <option value="Duvvada">
        </datalist>
        
        <button type="submit">Search</button>
    </form>
</body>
</html>
 --%>
 
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hostel Location Search</title>
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
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            color: #1e293b;
        }

        .search-card {
            background: #ffffff;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(37, 99, 235, 0.12);
            padding: 40px;
            width: 100%;
            max-width: 440px;
        }

        .icon-badge {
            width: 56px;
            height: 56px;
            background: #2563eb;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 18px;
            box-shadow: 0 6px 14px rgba(37, 99, 235, 0.3);
        }

        .icon-badge i {
            color: #ffffff;
            font-size: 22px;
        }

        h2 {
            text-align: center;
            color: #1e3a8a;
            font-size: 24px;
            margin-bottom: 6px;
        }

        .subtitle {
            text-align: center;
            color: #64748b;
            font-size: 14px;
            margin-bottom: 28px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 14px;
            font-weight: 600;
            color: #1e3a8a;
            margin-bottom: 8px;
        }

        .input-wrapper {
            position: relative;
            margin-bottom: 22px;
        }

        .input-wrapper i {
            position: absolute;
            left: 14px;
            top: 50%;
            transform: translateY(-50%);
            color: #2563eb;
            font-size: 15px;
        }

        input#location {
            width: 100%;
            padding: 12px 14px 12px 40px;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            font-size: 15px;
            color: #1e293b;
            background-color: #f8fafc;
            transition: border-color 0.2s ease, box-shadow 0.2s ease;
        }

        input#location:focus {
            outline: none;
            border-color: #2563eb;
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.15);
            background-color: #ffffff;
        }

        input#location::placeholder {
            color: #94a3b8;
        }

        button[type="submit"] {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            background-color: #2563eb;
            color: #ffffff;
            font-weight: 600;
            font-size: 15px;
            padding: 13px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 0 4px 10px rgba(37, 99, 235, 0.25);
            transition: background-color 0.2s ease, transform 0.15s ease;
        }

        button[type="submit"]:hover {
            background-color: #1d4ed8;
            transform: translateY(-2px);
        }

        button[type="submit"]:active {
            transform: translateY(0);
        }
    </style>
</head>
<body>
    <div class="search-card">
        <div class="icon-badge">
            <i class="fa-solid fa-magnifying-glass-location"></i>
        </div>
        <h2>Search Hostels by Location</h2>
        <p class="subtitle">Find hostels available in your preferred area</p>

        <form action="searchHostel" method="get">
            <label for="location">Choose Location</label>
            <div class="input-wrapper">
                <i class="fa-solid fa-location-dot"></i>
                <input list="locationOptions" name="location" id="location" placeholder="Enter location..." required>
            </div>

            <datalist id="locationOptions">
                <option value="Gajuwaka">
                <option value="Madhuravada">
                <option value="Rushikonda">
                <option value="Dwaraka Nagar">
                <option value="Duvvada">
            </datalist>

            <button type="submit">
                <i class="fa-solid fa-magnifying-glass"></i>
                <span>Search</span>
            </button>
        </form>
    </div>
</body>
</html>
 