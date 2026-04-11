al<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="modelo.entities.Cliente" %>
<%
Cliente cliente = (Cliente) session.getAttribute("cliente");
if (cliente == null) {
    response.sendRedirect("FormLogin.jsp");
    return;
}
%>
<!DOCTYPE html>

<html>

<head>

  <meta charset="UTF-8">
  <link rel="stylesheet" href="style.css">
  <title>Cadastro de Produtos</title>

</head>

<body>

<jsp:include page="WEB-INF/Cabecalho.jsp" />

<div class="page-wrapper">

<h1>Cadastro de Produtos</h1>

<form action= "InsereProdutoServlet" enctype="multipart/form-data" method="post">

  <label for="desc">Descrição: </label>

  <input type="text" id="desc" name="descProd" autofocus
         required>

  <label for="preco">Preço: </label>

  <input type="number" id="preco" name="precoProd"

         placeholder="999.99" required>

  <label for="foto">Foto: </label>

  <input type="file" id="foto" name="fotoProd" required>

  <p> <input type="submit" value="Cadastrar">

</form>

</div>

<jsp:include page="WEB-INF/Rodape.jsp" />

</body>

</html>
