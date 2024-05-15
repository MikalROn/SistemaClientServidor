<html>
    <head>
        <title> Trabalho da faculdade </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>
    <body>

        <form action="index.jsp" method="POST">
            <h1> Media de duas notas </h1>
            <label> Nota 1</label>
            <input type="text" name="n1">
            <label> Nota 2</label>
            <input type="text" name="n2">

            <input type="submit" value="Enviar">
        </form>
        <br>
         <%
            String primeiraNotaStr = request.getParameter("n1");
            String segundaNotaStr = request.getParameter("n2");

            if (primeiraNotaStr != null && !primeiraNotaStr.isEmpty() &&
                segundaNotaStr != null && !segundaNotaStr.isEmpty()) {

                int primeiraNota = Integer.parseInt(primeiraNotaStr);
                int segundaNota = Integer.parseInt(segundaNotaStr);

                int media = (primeiraNota + segundaNota) / 2; 

                out.println("<h2>Sua media foi -> " + media + "</h2>");
            }
        %>
    </body>
</html>
