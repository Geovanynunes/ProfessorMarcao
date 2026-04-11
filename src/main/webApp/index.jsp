<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Página Inicial - Minha Loja</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <jsp:include page="WEB-INF/Cabecalho.jsp" />

    <div class="page-wrapper" style="padding-top: 0; padding-bottom: 0;">
        <h2>Destaques da Loja</h2>
        <p class="page-subtitle">Confira nossos produtos ou acesse sua conta</p>
        
        <div class="nav-index">
            <a href="CatalogoServlet">Ver Catálogo de Produtos</a>
            <a href="FormProduto.jsp">Cadastro de Produtos (Admin)</a>
        </div>
    </div>

    <jsp:include page="WEB-INF/Rodape.jsp" />
</body>
</html>
