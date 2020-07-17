package com.example.accessingdatamysql.Controller;

import com.example.accessingdatamysql.Model.PembeliTiket;

import org.springframework.data.repository.CrudRepository;

public interface PembeliTiketRepository extends CrudRepository<PembeliTiket, Integer> {

}