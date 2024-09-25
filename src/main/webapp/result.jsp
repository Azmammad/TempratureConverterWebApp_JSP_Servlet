<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Conversion Result</title>
    <style>
        body {
            background-color: #f0f8ff;
            font-family: Arial, sans-serif;
            color: #333;
        }
        h1 {
            color: #4a90e2;
        }
        .container {
            margin: 100px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }
        .error {
            color: red;
            font-weight: bold;
        }
        .result {
            color: green;
            font-weight: bold;
        }
        a {
            text-decoration: none;
            color: #4a90e2;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Conversion Result</h1>
    <c:if test="${not empty error}">
        <h3 class="error">${error}</h3>
    </c:if>
    <c:if test="${empty error}">
        <h3 class="result">${originalTemp} degrees ${originalUnit} is equal to ${convertedTemp} degrees ${convertedUnit}.</h3>
    </c:if>
    <a href="index.jsp">Convert Again</a>
</div>
</body>
</html>
