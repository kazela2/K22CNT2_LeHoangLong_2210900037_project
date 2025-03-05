package com.springmvc.beans;

public class KhachHang {
    private int lhl_makh;
    private String lhl_hoten;
    private String lhl_email;
    private String lhl_sodienthoai;
    private String lhl_tendangnhap;
    private String lhl_matkhau;
    private String lhl_quyen;
    
    
	public KhachHang(int lhl_makh, String lhl_hoten, String lhl_email, String lhl_sodienthoai, String lhl_tendangnhap,
			String lhl_matkhau, String lhl_quyen) {
		super();
		this.lhl_makh = lhl_makh;
		this.lhl_hoten = lhl_hoten;
		this.lhl_email = lhl_email;
		this.lhl_sodienthoai = lhl_sodienthoai;
		this.lhl_tendangnhap = lhl_tendangnhap;
		this.lhl_matkhau = lhl_matkhau;
		this.lhl_quyen = lhl_quyen;
	}
	
	public KhachHang() {
		super();
	}

	public int getLhl_makh() {
		return lhl_makh;
	}
	public void setLhl_makh(int lhl_makh) {
		this.lhl_makh = lhl_makh;
	}
	public String getLhl_hoten() {
		return lhl_hoten;
	}
	public void setLhl_hoten(String lhl_hoten) {
		this.lhl_hoten = lhl_hoten;
	}
	public String getLhl_email() {
		return lhl_email;
	}
	public void setLhl_email(String lhl_email) {
		this.lhl_email = lhl_email;
	}
	public String getLhl_sodienthoai() {
		return lhl_sodienthoai;
	}
	public void setLhl_sodienthoai(String lhl_sodienthoai) {
		this.lhl_sodienthoai = lhl_sodienthoai;
	}
	public String getLhl_tendangnhap() {
		return lhl_tendangnhap;
	}
	public void setLhl_tendangnhap(String lhl_tendangnhap) {
		this.lhl_tendangnhap = lhl_tendangnhap;
	}
	public String getLhl_matkhau() {
		return lhl_matkhau;
	}
	public void setLhl_matkhau(String lhl_matkhau) {
		this.lhl_matkhau = lhl_matkhau;
	}
	public String getLhl_quyen() {
		return lhl_quyen;
	}
	public void setLhl_quyen(String lhl_quyen) {
		this.lhl_quyen = lhl_quyen;
	}
    
}