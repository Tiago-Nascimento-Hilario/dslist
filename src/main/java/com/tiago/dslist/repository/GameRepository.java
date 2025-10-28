package com.tiago.dslist.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tiago.dslist.entities.Game;

public interface GameRepository extends JpaRepository<Game, Long> {

}



