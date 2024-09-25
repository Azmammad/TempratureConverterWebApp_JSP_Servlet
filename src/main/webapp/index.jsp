<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Temperature Converter</title>
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
        input[type="number"], input[type="radio"] {
            margin: 10px;
        }
        input[type="submit"] {
            background-color: #4a90e2;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #357ABD;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Temperature Converter</h1>
    <form action="convert" method="post">
        <p>
            Enter Temperature:
            <input type="number" name="temperature" step="any" required />
        </p>
        <p>
            Convert from:
            <label>
                <input type="radio" name="conversionType" value="CtoF" checked /> Celsius to Fahrenheit
            </label>
            <label>
                <input type="radio" name="conversionType" value="FtoC" /> Fahrenheit to Celsius
            </label>
        </p>
        <p>
            <input type="submit" value="Convert" />
        </p>
    </form>
</div>
</body>
</html>
