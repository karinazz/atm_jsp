<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bankomat</h1>
        
        <form action="/KontoServlet" method="post">
            <label for="amount">Ilość gotówki:</label>
            <input type="text" id="amount" name="amount">
            <input type="submit" value="Wysłać">
        </form>
    </body>
</html>
