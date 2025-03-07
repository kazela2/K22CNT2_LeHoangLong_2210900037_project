package com.springmvc.beans;

import java.math.BigDecimal;
import java.util.Date;

public class LHLDonHang {
    private int lhl_madh;
    private Date lhl_ngaydat;
    private BigDecimal lhl_tongtien;
    private String lhl_trangthai;
    private int lhl_makh;
    private int lhl_manv;

    public LHLDonHang() {
    }

    public LHLDonHang(int lhl_madh, Date lhl_ngaydat, BigDecimal lhl_tongtien, String lhl_trangthai, int lhl_makh, int lhl_manv) {
        this.lhl_madh = lhl_madh;
        this.lhl_ngaydat = lhl_ngaydat;
        this.lhl_tongtien = lhl_tongtien;
        this.lhl_trangthai = lhl_trangthai;
        this.lhl_makh = lhl_makh;
        this.lhl_manv = lhl_manv;
    }

    public int getLhl_madh() {
        return lhl_madh;
    }

    public void setLhl_madh(int lhl_madh) {
        this.lhl_madh = lhl_madh;
    }

    public Date getLhl_ngaydat() {
        return lhl_ngaydat;
    }

    public void setLhl_ngaydat(Date lhl_ngaydat) {
        this.lhl_ngaydat = lhl_ngaydat;
    }

    public BigDecimal getLhl_tongtien() {
        return lhl_tongtien;
    }

    public void setLhl_tongtien(BigDecimal lhl_tongtien) {
        this.lhl_tongtien = lhl_tongtien;
    }

    public String getLhl_trangthai() {
        return lhl_trangthai;
    }

    public void setLhl_trangthai(String lhl_trangthai) {
        this.lhl_trangthai = lhl_trangthai;
    }

    public int getLhl_makh() {
        return lhl_makh;
    }

    public void setLhl_makh(int lhl_makh) {
        this.lhl_makh = lhl_makh;
    }

	public int getLhl_manv() {
		return lhl_manv;
	}

	public void setLhl_manv(int lhl_manv) {
		this.lhl_manv = lhl_manv;
	}	
    
}