package com.tiago.dslist.entities;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name="tb_pertencimento")
public class Pertencimento {

    @EmbeddedId
    private PertencimentoPK id = new PertencimentoPK();
    
    private Integer posicao;


    public Pertencimento(){}


    public Pertencimento(Game game, GameList list, Integer posicao) {
        id.setGame(game);
        id.setGameList(list);
        this.posicao = posicao;

    }


    public PertencimentoPK getId() {
        return id;
    }


    public void setId(PertencimentoPK id) {
        this.id = id;
    }


    public Integer getPosicao() {
        return posicao;
    }


    public void setPosicao(Integer posicao) {
        this.posicao = posicao;
    }


    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((id == null) ? 0 : id.hashCode());
        return result;
    }


    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Pertencimento other = (Pertencimento) obj;
        if (id == null) {
            if (other.id != null)
                return false;
        } else if (!id.equals(other.id))
            return false;
        return true;
    }

    

        

    
    
    
}
