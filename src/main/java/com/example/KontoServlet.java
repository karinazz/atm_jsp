package com.example;

import jakarta.servlet.annotation.WebServlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

@WebServlet("/KontoServlet")
public class KontoServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        //  parametry z formularza
        String amountStr = request.getParameter("amount");
        int amount = Integer.parseInt(amountStr);
        
        // Nominały banknotów
        int[] denominations = {200, 100, 50, 20};
        
        // obliczam ilość poszczególnych nominałów potrzebnych do wypłaty
        int[] counts = new int[denominations.length];
        int remainingAmount = amount;
        for (int i = 0; i < denominations.length; i++) {
            counts[i] = remainingAmount / denominations[i];
            remainingAmount %= denominations[i];
        }
        
        // sprawdzam czy można wypłacić żądaną kwotę
        boolean canWithdraw = remainingAmount == 0;
        
        // Przekazanie wyników do strony JSP
        request.setAttribute("amount", amount);
        request.setAttribute("denominations", denominations);
        request.setAttribute("counts", counts);
        request.setAttribute("canWithdraw", canWithdraw);
        
        // przekierowanie do wynik.jsp
        RequestDispatcher rd = request.getRequestDispatcher("wynik.jsp");
        rd.forward(request, response);
    }
}

