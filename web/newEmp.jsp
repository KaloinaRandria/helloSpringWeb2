<%@ page import="mg.working.model.Employe" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div>
        <% Employe newEmp = (Employe) request.getAttribute("newEmp"); %>
        <p><%=newEmp.getNom() %></p>
        <p><%=newEmp.getPrenom() %></p>
    </div>
</body>
</html>