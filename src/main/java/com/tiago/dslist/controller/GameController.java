package com.tiago.dslist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tiago.dslist.dto.GamerDTO;
import com.tiago.dslist.service.GameService;

@RestController
@RequestMapping(value = "/games")
public class GameController {

    @Autowired
    private GameService gameService;

    @GetMapping
    public List<GamerDTO> findAll(){
        List<GamerDTO> result = gameService.findAll();
        return result;
    }

    @GetMapping(value = "/{id}")
    public GamerDTO findById(@PathVariable Long id){
        GamerDTO result = gameService.findById(id);
        return result;
    }




}
