<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.Date" %>


<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%!
    Random generator = new Random();
    %>

<%
String number = "" + generator.nextInt(Integer.MAX_VALUE);
%>
 <jsp:useBean id="loan" class="domain.LoanApplication" scope="session"/>

<jsp:setProperty name="loan" property="number" value="<%=number%>"/>
<jsp:setProperty name="loan" property="date" value="<%=new Date()%>"/>

<H2>Wygenerowany nr wniosku to: <%=loan.getNumber()%></H2>

<H2>Data wygenerowania:  <%=loan.getDate()%></H2>
<br>
<form action="person.jsp">
<label>Wnioskowana kwota <input type="number" id="amount" name="amount"/> </label>
    <label>Ilosc rat <input type="number" id="installmentCount" name="installmentCount"/> </label>
    <input type="submit" value="nastepny krok"/>

</form>
</body>
</html>