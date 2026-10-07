<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Calculator</title>
</head>
<body>

<h2>JSP Calculator</h2>

<form method="post">
    <label>First Number:</label>
    <input type="number" name="num1" required>

    <br><br>

    <label>Second Number:</label>
    <input type="number" name="num2" required>

    <br><br>

    <button type="submit">Calculate</button>
</form>

<%
    String value1 = request.getParameter("num1");
    String value2 = request.getParameter("num2");

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        if (value1 == null || value1.trim().isEmpty() || value2 == null || value2.trim().isEmpty()) {
%>
<h3 style="color:red;">Fields must not be empty!</h3>
<%
} else {
    try {
        int num1 = Integer.parseInt(value1.trim());
        int num2 = Integer.parseInt(value2.trim());

        int sum = num1 + num2;
        int difference = num1 - num2;
        int product = num1 * num2;
%>
<h3>Results</h3>
<p>First Number: <%= num1 %></p>
<p>Second Number: <%= num2 %></p>
<p>Sum: <%= sum %></p>
<p>Difference: <%= difference %></p>
<p>Product: <%= product %></p>
<%
} catch (NumberFormatException e) {
%>
<h3 style="color:red;">Please enter valid integer values!</h3>
<%
            }
        }
    }
%>

</body>
</html>