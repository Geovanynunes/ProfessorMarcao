<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">

<title>Login</title>

</head>

<body>

<jsp:include page="WEB-INF/Cabecalho.jsp" />

<div class="page-wrapper">

<h1>Login do Sistema</h1>

<form action = "LoginServlet" method = "post">

    <label for="email">Email: </label>

    <input type="email" id="email" name="email" autofocus
    required>

    <label for="senha">Senha: </label>

    <input type="password" id="senha" name="senha" maxlength="10"
    required>

    <p><input type="submit" value="Fazer Login"></p>
    <p><a href="FormCliente.jsp">Criar conta</a></p>

</form>

</div>

<jsp:include page="WEB-INF/Rodape.jsp" />

</body>

</html>
