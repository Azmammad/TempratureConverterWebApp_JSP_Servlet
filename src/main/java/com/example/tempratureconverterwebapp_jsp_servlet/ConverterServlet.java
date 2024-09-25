package com.example.tempratureconverterwebapp_jsp_servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/convert")
public class ConverterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String temperatureStr = request.getParameter("temperature");
        String conversionType = request.getParameter("conversionType");

        try {
            double temperature = Double.parseDouble(temperatureStr);
            double convertedTemp;
            String originalUnit, convertedUnit;

            if ("CtoF".equals(conversionType)) {
                convertedTemp = (temperature * 9 / 5) + 32;
                originalUnit = "Celsius";
                convertedUnit = "Fahrenheit";
            } else {
                convertedTemp = (temperature - 32) * 5 / 9;
                originalUnit = "Fahrenheit";
                convertedUnit = "Celsius";
            }

            request.setAttribute("originalTemp", temperature);
            request.setAttribute("convertedTemp", convertedTemp);
            request.setAttribute("originalUnit", originalUnit);
            request.setAttribute("convertedUnit", convertedUnit);
            request.getRequestDispatcher("result.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid temperature input. Please enter a valid number.");
            request.getRequestDispatcher("result.jsp").forward(request, response);
        }
    }
}

