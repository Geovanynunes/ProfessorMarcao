package servlets;

import java.io.IOException;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

import modelo.dao.ClienteDAO;
import modelo.entities.Cliente;

@WebServlet("/InsereClienteServlet")
public class InsereClienteServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request,
                           HttpServletResponse response) throws ServletException, IOException {

        String nome  = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        if (nome != null && email != null && senha != null) {

            ClienteDAO dao = new ClienteDAO();

            // Verifica se email já está cadastrado
            Cliente existente = dao.getByEmail(email);

            if (existente != null) {
                // Email já em uso — volta pro formulário
                response.sendRedirect("FormCliente.html");
                return;
            }

            Cliente cliente = new Cliente();
            cliente.setNome(nome);
            cliente.setEmail(email);
            cliente.setSenha(senha);

            dao.salvar(cliente);

            // Cadastro OK — vai para o login
            response.sendRedirect("FormLogin.html");

        } else {
            // Algum campo veio nulo — volta pro formulário
            response.sendRedirect("FormCliente.html");
        }
    }
}