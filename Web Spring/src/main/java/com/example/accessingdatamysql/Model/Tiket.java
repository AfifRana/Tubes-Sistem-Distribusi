package com.example.accessingdatamysql.Model;


import javax.persistence.Entity;
//import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Table;

@Entity
@Table(name="tiket")
public class Tiket {

    @Column(name="id_konser")
    private int idKonser;
    @Column(name="id_kelas")
    private int idKelas;
    @Column(name="jumlah_tiket")
    private int jumlahTiket;

    public int getIdKonser() {
        return idKonser;
    }

    public void setIdKonser(final int idKonser) {
        this.idKonser = idKonser;
    }

    public int getIdKelas() {
        return idKelas;
    }

    public void setIdKelas(final int idKelas) {
		this.idKelas = idKelas;
    }
    
    public int getJumlahTiket() {
        return jumlahTiket;
    }

    public void setJumlahTiket(final int jumlahTiket) {
		this.jumlahTiket = jumlahTiket;
    }

}