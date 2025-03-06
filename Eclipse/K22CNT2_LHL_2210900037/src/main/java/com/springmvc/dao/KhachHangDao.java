package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.KhachHang;

public class KhachHangDao {

    private JdbcTemplate template;

    // Setters và getters cho template (cần thiết cho Spring để tự động inject JdbcTemplate)
    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm khách hàng
    public int save(KhachHang kh) {
        System.out.println("Saving KhachHang: " + kh);  // In ra thông tin khách hàng
        String sql = "INSERT INTO lhl_khachhang (lhl_hoten, lhl_email, lhl_sodienthoai) VALUES (?, ?, ?)";
        return template.update(sql, kh.getLhl_hoten(), kh.getLhl_email(), kh.getLhl_sodienthoai());
    }

    // Cập nhật khách hàng
    public int update(KhachHang kh) {
        String sql = "UPDATE lhl_khachhang SET "
                + "lhl_hoten = ?, "
                + "lhl_email = ?, "
                + "lhl_sodienthoai = ? "
                + "WHERE lhl_makh = ?";  // Xóa dấu phẩy thừa ở cuối

        return template.update(sql, kh.getLhl_hoten(), kh.getLhl_email(), kh.getLhl_sodienthoai(), kh.getLhl_makh());
    }

    // Xóa khách hàng
    public int delete(int id) {
        String sql = "DELETE FROM lhl_khachhang WHERE lhl_makh=?";
        return template.update(sql, id);
    }

    // Lấy danh sách khách hàng
    public List<KhachHang> getAllKhachHang() {
        return template.query("SELECT * FROM lhl_khachhang", new RowMapper<KhachHang>() {
            public KhachHang mapRow(ResultSet rs, int rowNum) throws SQLException {
                KhachHang kh = new KhachHang();
                kh.setLhl_makh(rs.getInt("lhl_makh"));
                kh.setLhl_hoten(rs.getString("lhl_hoten"));
                kh.setLhl_email(rs.getString("lhl_email"));
                kh.setLhl_sodienthoai(rs.getString("lhl_sodienthoai"));
                return kh;
            }
        });
    }

    // Lấy khách hàng theo ID
    public KhachHang getKhachHangById(int id) {
        String sql = "SELECT * FROM lhl_khachhang WHERE lhl_makh=?";
        return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<>(KhachHang.class));
    }
}
