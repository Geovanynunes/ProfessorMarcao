package modelo.entities;

import java.io.*;

import jakarta.persistence.*;

import java.math.BigDecimal;

import java.util.Base64;

@Entity

public class Produto implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id

    @GeneratedValue

    private int id;

    @Column(length = 100, nullable = false)

    private String descricao;

    @Column(precision = 10, scale = 2)

    private BigDecimal preco;

    @Lob
    @Column(columnDefinition = "LONGBLOB")
    private byte[] foto;
    @Override

    public boolean equals(Object obj) {

        Produto p = (Produto)obj;

        return id == p.id;

    }

    @Override

    public int hashCode() {

        return id;

    }

    public String getFotoAsString() {

        return Base64.getEncoder().encodeToString(foto);

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public BigDecimal getPreco() {
        return preco;
    }

    public void setPreco(BigDecimal preco) {
        this.preco = preco;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }
}