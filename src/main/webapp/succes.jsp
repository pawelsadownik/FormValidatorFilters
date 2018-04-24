<%@ page import="domain.LoanApplication" %><%--
  Created by IntelliJ IDEA.
  User: pawel
  Date: 24.04.18
  Time: 00:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="parameters" class="domain.LoanParameters" scope="session"/>
<jsp:useBean id="loanService" class="services.LoanService" scope="session"/>
<jsp:useBean id="loan" class="domain.LoanApplication" scope="session"></jsp:useBean>
<jsp:useBean id="address" class="domain.Address" scope="session"/>
<jsp:useBean id="person" class="domain.Person" scope="session"/>

<jsp:setProperty property="*" name="address" />

<%
    loan.setParameters(parameters);
    loan.setPerson(person);
    loan.setAddress(address);
    loanService.add(loan);
    %>

<ul>
    <%
        for (LoanApplication loanApplication: loanService.getAll()) {
    %>
    <li>
        Wniosek nr: <%= loanApplication.getNumber() +"<br/>"
    +"Osoba: " + loanApplication.getPerson().getSurName() +"<br/>"
    +"Kwota: " + loanApplication.getParameters().getAmount() +"<br/>"
    +"Miasto: "+ loanApplication.getAddress().getCity()
    %>
    </li>
    <%
        }
    %>
</ul>
</body>
</html>
