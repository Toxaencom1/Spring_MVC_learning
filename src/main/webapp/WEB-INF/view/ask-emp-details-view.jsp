<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>

<h2>Dear Employee, Please enter your details</h2>

<br>
<br>

<%--@elvariable id="employee" type="com.taxah.spring.mvc.Employee"--%>
<%--@elvariable id="departments" type="com.taxah.spring.mvc.Departments"--%>
<%--@elvariable id="carBrands" type="com.taxah.spring.mvc.CarBrands"--%>
    <form:form action="showDetails" modelAttribute="employee">
        Name <form:input path="name"/>
        <form:errors path="name"/>
        <br><br>
        Surname <form:input path="surname"/>
        <form:errors path="surname"/>
        <br><br>
        Salary <form:input path="salary"/>
        <form:errors path="salary"/>
        <br><br>
        Department <form:select path="department">
        <form:options items="${departments}"/>
    <%--    <form:option value="Information Technology" label="IT"/>--%>
    <%--    <form:option value="Human Resources" label="HR"/>--%>
    <%--    <form:option value="Sales" label="Sales"/>--%>
        </form:select>
        <br><br>
        Which car do you want?
        <form:select path="carBrand">
            <form:options items="${carBrands}"/>
        </form:select>
        <br><br>
        Foreign Language(s)
        EN<form:checkbox path="languages" value="English"/>
        DE<form:checkbox path="languages" value="Deutch"/>
        RU<form:checkbox path="languages" value="Russian"/>
        <br><br>
        Phone number:  <form:input path="phoneNumber"/>
        <form:errors path="phoneNumber"/>
        <br><br>
        Email:  <form:input path="email"/>
        <form:errors path="email"/>
        <br><br>
        <%--&lt;%&ndash;         <form:radiobutton path="carBrand" value="?" &ndash;%&gt; for one--%>
<%--        <form:radiobuttons path="carBrand" items="${class.field}"/>--%>

        <input type="submit" value="OK">

    </form:form>

</body>

</html>