<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>Patient List</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Patient ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Birth Date</th>
                <th>Diagnosis</th>
                <th>Doctor</th>
                <th>Notes</th>
                <th>Record Time</th>
                <th>Temperature</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="patient" items="${patients}">
                <tr>
                    <td>${patient.patient_Id}</td>
                    <td>${patient.name}</td>
                    <td>${patient.gender}</td>
                    <td>${patient.birth_Date}</td>
                    <td>${patient.diagnosis}</td>
                    <td>${patient.doctor}</td>
                    <td>${patient.notes}</td>
                    <td>${patient.record_Time}</td>
                    <td>${patient.temperature}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>