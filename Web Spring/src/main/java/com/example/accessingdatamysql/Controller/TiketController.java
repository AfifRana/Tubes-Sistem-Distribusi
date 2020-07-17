package com.example.accessingdatamysql.Controller;

import com.example.accessingdatamysql.Model.TiketIdentity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class TiketController {
    @Autowired
    private TiketRepository tiketRepository;

    public int checkJumlahTiket(int idKonser, int idKelas){
        // return  tiketRepository.findOne(new TiketIdentity(idKonser, idKelas));
        return  tiketRepository.findByTiketIdentity(new TiketIdentity(idKonser, idKelas)).getJumlahTiket();
    }
}