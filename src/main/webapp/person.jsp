<%--
  Created by IntelliJ IDEA.
  User: pawel
  Date: 14.04.18
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="parameters" class="domain.LoanParameters" scope="session"/>
<jsp:useBean id="loan" class="domain.LoanApplication" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="parameters" />

Wygenerowany nr wniosku to: <jsp:getProperty name="loan" property="number"/><br/>
Kwota: <jsp:getProperty name="parameters" property="amount"/><br/>

<form action="address.jsp">
    <label> Imie: <input type="text" id="firstName" name="firstName"/> </label> <br/>
    <label> Nazwisko: <input type="text" id="surName" name="surName"/> </label> <br/>
    <label> Pesel: <input type="text" id="pesel" name="pesel"/> </label> <br/>
    <input type="submit" value="Nastepny krok"/>
</form>

</body>
</html>
