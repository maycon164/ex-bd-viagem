<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>VIAGEM</title>
</head>

<body>
	
	<form action="viagemdesc" method="post" class="form center">
		<fieldset>
			<legend>DESCRICAO DE VIAGEM </legend> 
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
				<th>placa</th>
				<th>hora saida</th>
				<th>hora chegada</th>
				<th>partida</th>
				<th>destino</th>		
			</tr>
		</thead>
		<c:if test="${not empty viagemDesc }">
			<tbody>
				<tr>
					<td><c:out value="${viagemDesc.codigo}"/></td>
					<td><c:out value="${viagemDesc.placa}"/></td>
					<td><c:out value="${viagemDesc.horaSaida}"/></td>
					<td><c:out value="${viagemDesc.horaChegada}"/></td>
					<td><c:out value="${viagemDesc.partida}"/></td>
					<td><c:out value="${viagemDesc.destino}"/></td>
				</tr>
			</tbody>
		</c:if>	
	</table>
	
</body>

</html>