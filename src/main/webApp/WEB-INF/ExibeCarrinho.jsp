<!DOCTYPE html>

<%@page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="jakarta.tags.core"%>

<%@taglib prefix="fmt" uri="jakarta.tags.fmt"%>

<html>

<head>

<title>Carrinho de Compras</title>
<link rel="stylesheet" href="style.css">

</head>

<body>

<jsp:include page="Cabecalho.jsp" />

<div class="page-wrapper">

<form action="FechaPedidoServlet" method="post">

<table border="1">

<tr> <th>Código</th> <th>Imagem</th> <th>Descrição do Produto</th> <th>Preço</th>

<th>Quantidade</th> </tr>
<c:forEach items="${carrinho}" var="entrada">

<c:set var="produto" value="${entrada.key}" />

<tr>

<td>${produto.id}<input type="hidden" name="id" value="${produto.id}"></td>

<td><img src="data:image/png;base64,${produto.fotoAsString}" style="max-width: 100px; max-height: 100px;"></td>

<td>${produto.descricao}</td>

<td><fmt:formatNumber value="${produto.preco}"
type="currency"

groupingUsed="true" /></td>

<td><input type="text" name="qtd" size=10

value="${entrada.value}"></td>

<td><a
href="RemoveItemServlet?id=${produto.id}">Remover</a></td>

</tr>

</c:forEach>

<tr> <td colspan="6" align="center"><input type="submit"

value="Fechar Pedido"></td> </tr>

</table>

</form>

<p><a href="CatalogoServlet">Continuar Comprando</a>

</div>

<jsp:include page="Rodape.jsp" />

</body>

</html>