package com.fakhri;

public class Mahasiswa {
    private String nama, nim, alamat;
    private MyDate tanggalLahir;

    public Mahasiswa() {
    }

    public Mahasiswa(String nim, String nama, String alamat, MyDate tanggalLahir) {
        this.nama = nama;
        this.nim = nim;
        this.tanggalLahir = tanggalLahir;
        this.alamat = alamat;
        this.tanggalLahir = tanggalLahir;
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public void setNama(String nama) throws Exception {
        if (nama.matches(",'[1234567890],'")) {
            throw new Exception("Salah input nama jangan sampai ada angka");
        } else {
            this.nama = nama;
        }
    }

    public void setNim(String nim) {
        this.nim = nim;
    }

    public void setTanggalLahir(MyDate tanggalLahir) {
        this.tanggalLahir = tanggalLahir;
    }

    public String getNama() {
        return this.nama;
    }

    public String getNim() {
        return this.nim;
    }

    public MyDate getTanggalLahir() {
        return this.tanggalLahir;
    }

    @Override
    public String toString() {
        return "Nim: " + this.nim + "\n" + "Nama: " + this.nama + "\n" + "Tanggal lahir: " + this.tanggalLahir;
    }


}


