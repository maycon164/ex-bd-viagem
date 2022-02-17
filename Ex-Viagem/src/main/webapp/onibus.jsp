<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Insert title here</title>
</head>
<body>
	<form action="onibusdesc" method="post" class="form center">
		<fieldset>
			<legend>DESCRICAO DE ONIBUS </legend> 
			<input type="number" name="codigo" id="codigo" placeholder="Codigo da Viagem">
			<br>
			<br>
			<input type="submit" value="PESQUISAR">
		</fieldset>
	</form>
	
	<table border="1" class="center espacamento-top">
		<thead>
			<tr>
				<th>codigo</th>
				<th>nome</th>
				<th>placa</th>
				<th>marca</th>
				<th>ano</th>
				<th>descricao</th>		
			</tr>
		</thead>
		<c:if test="${not empty onibusDesc }">
			<tbody>
				<tr>
					<td><c:out value="${onibusDesc.codigo}"/></td>
					<td><c:out value="${onibusDesc.nome}"/></td>
					<td><c:out value="${onibusDesc.placa}"/></td>
					<td><c:out value="${onibusDesc.marca}"/></td>
					<td><c:out value="${onibusDesc.ano}"/></td>
					<td><c:out value="${onibusDesc.descricao}"/></td>
				</tr>
			</tbody>
		</c:if>	
	</table>
</body>
</html>