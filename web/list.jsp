<%@ page import="mg.working.model.Employe" %>
<%@ page import="java.util.List" %>

<div>
    <% List<Employe> liste = (List<Employe>) request.getAttribute("listeEmp"); %>
    <table border="1">
        <tr>
            <th>Nom</th>
            <th>Date</th>
        </tr>
        <% for (int i = 0; i < liste.size(); i++) { %>
            <tr>
                <td><%= liste.get(i).getNom() %></td>
                <td><%= liste.get(i).getPrenom() %></td>
            </tr>
        <% } %>
    </table>
</div>