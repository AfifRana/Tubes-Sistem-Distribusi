package com.example.accessingdatamysql.Controller;

import java.util.List;

import com.example.accessingdatamysql.Model.Tiket;
import com.example.accessingdatamysql.Model.TiketIdentity;

import org.springframework.data.repository.CrudRepository;

public interface TiketRepository extends CrudRepository<Tiket, TiketIdentity> {
    Tiket findByTiketIdentity(TiketIdentity tiketIdentity);
    List<Tiket> findByTiketIdentityIdKonser(int idKonser);
    List<Tiket> findByTiketIdentityIdKelas(int idKelas);
}