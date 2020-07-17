package com.example.accessingdatamysql.Controller;

import com.example.accessingdatamysql.Model.PembeliTiket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(path="/spring-java")
public class PembeliTiketController {
    @Autowired
    private PembeliTiketRepository pembeliTiketRepository;
    @Autowired
    private TiketController tiketController;

    @GetMapping(path="/add")
    public String showForm(Model model) {
        model.addAttribute("pembeli", new PembeliTiket());
        return "index";
    }

    @PostMapping(path="/add")
    public @ResponseBody String addNewPembeli (@ModelAttribute PembeliTiket pembeli) {
        // PembeliTiket pembeli = new PembeliTiket();
        // pembeli.setNamaPembeli(name);
        // pembeli.setIdKonser(idKonser);
        // pembeli.setIdKelas(idKelas);
        if (tiketController.checkJumlahTiket(pembeli.getIdKonser(), pembeli.getIdKelas()) > 0) {
            pembeliTiketRepository.save(pembeli);
            return "Saved";
        } else {
            return "Jumlah tiket kurang";
        }
    }

}