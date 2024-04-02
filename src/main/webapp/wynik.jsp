<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Wynik operacji</title>
</head>
<body>
    <h1>Wynik operacji</h1>
    
    <%-- czy operacja była wpłatą czy wypłatą --%>
    <% if (request.getAttribute("canWithdraw") != null) { %>
        <%-- Jeśli operacja była wypłatą --%>
        <% if ((boolean) request.getAttribute("canWithdraw")) { %>
            <p>Operacja wypłaty została wykonana.</p>
            <p>Ilość poszczególnych nominałów do wypłaty żądanej kwoty:</p>
            <ul>
                <%-- Wyświetla ilość poszczególnych nominałów --%>
                <% int[] denominations = (int[]) request.getAttribute("denominations"); %>
                <% int[] counts = (int[]) request.getAttribute("counts"); %>
                <% for (int i = 0; i < denominations.length; i++) { %>
                    <% if (counts[i] > 0) { %>
                        <li><%= denominations[i] %> zł: <%= counts[i] %> banknotów</li>
                    <% } %>
                <% } %>
            </ul>
        <% } else { %>
            <p>Nie można wypłacić żądanej kwoty.</p>
        <% } %>
    <% } else { %>
        <%-- Jeśli operacja była wpłatą --%>
        <p>Operacja wpłaty została wykonana. Stan konta po wpłacie:</p>
        <p>Stan konta: <%= request.getParameter("amount") %> zł</p>
    <% } %>
</body>
</html>