package com.example.accessingdatamysql.Controller;

import com.example.accessingdatamysql.Model.Tiket;

import org.springframework.data.repository.CrudRepository;

public interface TiketRepository extends CrudRepository<Tiket, Integer> {

}