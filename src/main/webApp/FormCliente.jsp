<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Registro</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<jsp:include page="WEB-INF/Cabecalho.jsp" />

<div class="page-wrapper">

<h1>Registre-se</h1>

<form action="InsereClienteServlet" method="post">

    <label for="nome">Nome completo:</label>
    <input type="text" id="nome" name="nome"
           autocomplete="name" autofocus required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email"
           autocomplete="email" required>

    <label for="senha">Senha:</label>
    <input type="password" id="senha" name="senha"
           autocomplete="new-password" minlength="8" required>

    <p><input type="submit" value="Criar conta"></p>
    <p>Já tem conta? <a href="FormLogin.jsp">Fazer login</a></p>

</form>

</div>

<jsp:include page="WEB-INF/Rodape.jsp" />

</body>
</html>
