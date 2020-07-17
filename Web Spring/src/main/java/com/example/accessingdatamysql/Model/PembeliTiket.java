package com.example.accessingdatamysql.Model;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Table;

@Entity
@Table(name="pembeli_tiket")
public class PembeliTiket {

    @Id
    @Column(name="id_pembeli")
    private int idPembeli;
    @Column(name="nama_pembeli")
    private String namaPembeli;
    @Column(name="id_konser")
    private int idKonser;
    @Column(name="id_kelas")
    private int idKelas;

    public String getNamaPembeli() {
		return namaPembeli;
	}

	public void setNamaPembeli(final String namaPembeli) {
        this.namaPembeli = namaPembeli;
    }

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

}