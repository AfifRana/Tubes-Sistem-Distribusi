package com.example.accessingdatamysql.Model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

@Embeddable
public class TiketIdentity implements Serializable {
    /**
     *
     */
    // private static final long serialVersionUID = 1L;

    @NotNull
    @Column(name="id_konser")
    private int idKonser;

    @NotNull
    @Column(name="id_kelas")
    private int idKelas;

    public TiketIdentity() {

    }

    public TiketIdentity(int idKonser, int idKelas) {
        this.idKonser = idKonser;
        this.idKelas = idKelas;
    }

    public int getIdKonser() {
        return idKonser;
    }

    public void setEmployeeId(int idKonser) {
        this.idKonser = idKonser;
    }

    public int getIdKelas() {
        return idKelas;
    }

    public void setIdkelas(int idKelas) {
        this.idKelas = idKelas;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TiketIdentity that = (TiketIdentity) o;

        if (idKonser != (that.idKonser)) return false;
        return (idKelas==(that.idKelas));
    }

    // @Override
    // public int hashCode() {
    //     int result = idKonser.hashCode();
    //     result = 31 * result + idKelas.hashCode();
    //     return result;
    // }
}