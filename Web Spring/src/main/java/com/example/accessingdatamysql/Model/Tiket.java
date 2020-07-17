package com.example.accessingdatamysql.Model;

import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Table;

@Entity
@Table(name="tiket")
public class Tiket {

    @EmbeddedId
    private TiketIdentity tiketIdentity;
    
    @Column(name="jumlah_tiket")
    private int jumlahTiket;

    public TiketIdentity getTiketIdentity() {
        return tiketIdentity;
    }
    
    public void setTiketIdentity(final TiketIdentity tiketIdentity) {
        this.tiketIdentity = tiketIdentity;
    }
    
    public int getJumlahTiket() {
        return jumlahTiket;
    }

    public void setJumlahTiket(final int jumlahTiket) {
		this.jumlahTiket = jumlahTiket;
    }

}