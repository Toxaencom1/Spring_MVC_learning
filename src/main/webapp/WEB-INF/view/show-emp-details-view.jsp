<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="employee" scope="request" type="com.taxah.spring.mvc.Employee"/>

<!DOCTYPE html>
<html>
<body>

<h2>Dear Employee, you are WELCOME!!!</h2>

<br>
<br>
<br>

Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}$
<br>
Your department: ${employee.department.description}
<br>
Your car: ${employee.carBrand.description}!
<br>
Language(s):
<ul>
    <c:forEach var="lang" items="${employee.languages}">
            <li> ${lang}</li>
    </c:forEach>
</ul>
<br>
Phone number: ${employee.phoneNumber}
<br>
Email: ${employee.email}

</body>

</html>