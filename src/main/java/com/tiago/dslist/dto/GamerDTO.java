package com.tiago.dslist.dto;

import com.tiago.dslist.entities.Game;


public class GamerDTO {

    private Long id ;

    private String genero;
    private String plataforma;
    private Double pontuacao;
    private String foto;
    private String descricaoCurta;    
    private String descricaoLonga;

    public GamerDTO(){}

    public GamerDTO( Game entity) {
        this.id = entity.getId();
        this.genero = entity.getGenero();
        this.plataforma = entity.getPlataforma();
        this.pontuacao = entity.getPontuacao();
        this.foto = entity.getFoto();
        this.descricaoCurta = entity.getDescricaoCurta();
        this.descricaoLonga = entity.getDescricaoLonga();
    }

    public Long getId() {
        return id;
    }


    public String getGenero() {
        return genero;
    }

    public String getPlataforma() {
        return plataforma;
    }

    public Double getPontuacao() {
        return pontuacao;
    }

    public String getFoto() {
        return foto;
    }

    public String getDescricaoCurta() {
        return descricaoCurta;
    }

    public String getDescricaoLonga() {
        return descricaoLonga;
    }


}
