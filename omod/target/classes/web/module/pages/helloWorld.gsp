<% if (context.authenticated) { %>
Hello, $context.authenticatedUser.personName.fullName.</br>
Your roles are:</br>
<% context.authenticatedUser.roles.findAll { !it.retired }.each { %>
$it.role ($it.description)
<% } %>
<% } else { %>
Please log in to continue...
<% } %>
</br>
</br>
</br>

<%
    ui.includeJavascript("patientdetails", "scripts/jquery.dataTables.js")
    ui.includeJavascript("patientdetails", "scripts/jquery-1.11.1.js")
    ui.includeJavascript("patientdetails", "scripts/jquery-1.11.1.min.js")
%>

<script>
    var jq = jQuery;
    jq(document).ready(function() {
        jq('#myTable').dataTable({
            "bJQueryUI": true,
            "sPaginationType": "full_numbers"
        });
    } );
</script>

<table id="myTable">
    <thead>
    <tr>
        <th>Identifier</th>
        <th>Age</th>
        <th>Gender</th>
    </tr>
    </thead>
    <tbody>
    <% patients.each { %>
    <tr>
        <td> ${ it.patientId } </td>
        <td>${ it.age }</td>
        <td>${ it.gender }</td>
    </tr>
    </tbody>
    <% } %>
</table>

