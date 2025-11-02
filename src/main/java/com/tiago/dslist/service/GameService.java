package com.tiago.dslist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

import com.tiago.dslist.dto.GamerDTO;
import com.tiago.dslist.entities.Game;
import com.tiago.dslist.repository.GameRepository;


@Service
public class GameService {

    @Autowired
    private GameRepository gameRepository;

    public List<GamerDTO> findAll(){
       List<Game> result = gameRepository.findAll();
       List<GamerDTO> dto = result.stream().map(x -> new GamerDTO(x)).toList();
       return dto;
    }

    @Transactional(readOnly = true)
    public GamerDTO findById(Long id){
        Game result = gameRepository.findById(id)
        .orElseThrow(()-> new ResponseStatusException(
                HttpStatus.NOT_FOUND, "Não há cadastro de jogo para o id " + id
            ));
            return new GamerDTO(result);
        }
    }


