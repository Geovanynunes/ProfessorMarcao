<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="jakarta.tags.core" %>

<%@taglib prefix="fmt" uri="jakarta.tags.fmt"%>

<html>

<head>

<title>Pedido</title>
<link rel="stylesheet" href="style.css">

</head>

<body>

<jsp:include page="Cabecalho.jsp" />
<div class="page-wrapper" style="padding-top: 0;">

<h1>Pedido Confirmado</h1>

<p>Data: <fmt:formatDate value="${pedido.emissao}"

pattern="dd/MM/yyyy" />

<p>Cliente: ${pedido.cliente.nome}

<p>Email: ${pedido.cliente.email}
<p>Produtos:

<table border="1">

<tr>

<th>Descrição</th> <th>Preço Unit.</th> <th>Quantidade</th>

<th>Total Item</th>

</tr>

<c:set var="total" value="0"/>

<c:forEach var="item" items="${pedido.itens}">

<tr>

<td>${item.produto.descricao}</td>

<td align="right"><fmt:formatNumber

value="${item.precoVenda}" type="currency"

groupingUsed="true"/></td>

<td align="right"><fmt:formatNumber

value="${item.quantidade}" type="number"

groupingUsed="true"/></td>

<td align="right"><fmt:formatNumber

value="${item.precoVenda * item.quantidade}"

type="currency" groupingUsed="true"/></td>

</tr>
<c:set var="total" value="${total + (item.precoVenda * item.quantidade)}"/>
</tr>
</c:forEach>
<tr>
    <td colspan="3" align="right"><b>Total do Pedido:</b></td>
    <td align="right"><b><fmt:formatNumber value="${total}" type="currency" groupingUsed="true"/></b></td>
</tr>
</table>
<p><a href="index.jsp" class="link-btn">Voltar à Página Inicial</a></p>

</div>
<jsp:include page="Rodape.jsp" />

</body>
</html>