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
<jsp:useBean id="address" class="domain.Address" scope="session"/>
<jsp:useBean id="person" class="domain.Person" scope="session"/>
<jsp:setProperty property="*" name="parameters" />
<jsp:setProperty property="*" name="person" />
<jsp:setProperty property="*" name="address" />


Wygenerowany nr wniosku to: <jsp:getProperty name="loan" property="number"/><br/>
Kwota: <jsp:getProperty name="parameters" property="amount"/><br/>
Imie: <jsp:getProperty name="person" property="firstName"/><br/>
Nazwisko: <jsp:getProperty name="person" property="surName"/><br/>
Pesel: <jsp:getProperty name="person" property="pesel"/><br/>

<form action="succes.jsp">
    <label> Miasto: <input type="text" id="city" name="city"/> </label> <br/>
    <label> kod pocztowy: <input type="text" id="zipCode" name="zipCode"/> </label> <br/>
    <label> Ulica: <input type="text" id="street" name="street"/> </label> <br/>
    <label> Nr budynku: <input type="text" id="houseNumber" name="houseNumber"/> </label> <br/>
    <label> Nr mieszkania: <input type="text" id="localNumber" name="localNumber"/> </label> <br/>
    <label> Nr telefonu: <input type="text" id="phoneNumber" name="phoneNumber"/> </label> <br/>
    <input type="submit" value="Zakoncz skladanie wniosku"/>
</form>

</body>
</html>
