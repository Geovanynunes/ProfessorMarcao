<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<header style="width: 100%; max-width: var(--max-width, 860px); margin: 0 auto 30px auto; padding-bottom: 20px; border-bottom: 1px solid var(--border, #2e2e2e); display: flex; justify-content: space-between; align-items: center;">
    <div>
        <a href="index.jsp" style="text-decoration: none;">
            <h1 style="margin: 0; font-size: 1.8rem; text-align: left;">Minha<span style="color: var(--accent, #ff6b2b);">Loja</span></h1>
        </a>
    </div>
    <div style="font-size: 0.95rem;">
        <c:choose>
            <c:when test="${not empty sessionScope.cliente}">
                <span style="color: var(--muted, #888);">Bem-vindo(a),</span> <strong>${sessionScope.cliente.nome}</strong> |
                <a href="LogoutServlet" style="margin-left: 8px;">Sair</a>
            </c:when>
            <c:otherwise>
                 <a href="FormLogin.jsp">Login</a> |
                 <a href="FormCliente.jsp" style="margin-left: 8px;">Criar Conta</a>
            </c:otherwise>
        </c:choose>
    </div>
</header>
