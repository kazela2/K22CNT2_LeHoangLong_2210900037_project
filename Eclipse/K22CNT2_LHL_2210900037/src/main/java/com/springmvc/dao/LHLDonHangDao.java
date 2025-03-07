package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.LHLDonHang;

public class LHLDonHangDao {

    private JdbcTemplate template;

    // Setters và getters cho template (cần thiết cho Spring để tự động inject JdbcTemplate)
    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm đơn hàng
    public int save(LHLDonHang dh) {
        String sql = "INSERT INTO lhl_donhang (lhl_ngaydat, lhl_tongtien, lhl_trangthai, lhl_makh, lhl_manv) VALUES (?, ?, ?, ?, ?)";
        return template.update(sql, dh.getLhl_ngaydat(), dh.getLhl_tongtien(), dh.getLhl_trangthai(), dh.getLhl_makh(), dh.getLhl_manv());
    }

    // Cập nhật đơn hàng
    public int update(LHLDonHang dh) {
        String sql = "UPDATE lhl_donhang SET "
                + "lhl_ngaydat = ?, "
                + "lhl_tongtien = ?, "
                + "lhl_trangthai = ?, "
                + "lhl_makh = ?, "
                + "lhl_manv = ? "
                + "WHERE lhl_madh = ?";
        return template.update(sql, dh.getLhl_ngaydat(), dh.getLhl_tongtien(), dh.getLhl_trangthai(), dh.getLhl_makh(), dh.getLhl_manv(), dh.getLhl_madh());
    }

    // Xóa đơn hàng
    public int delete(int id) {
        String sql = "DELETE FROM lhl_donhang WHERE lhl_madh=?";
        return template.update(sql, id);
    }

    // Lấy danh sách đơn hàng
    public List<LHLDonHang> getAllDonHang() {
        return template.query("SELECT * FROM lhl_donhang", new RowMapper<LHLDonHang>() {
            public LHLDonHang mapRow(ResultSet rs, int rowNum) throws SQLException {
                LHLDonHang dh = new LHLDonHang();
                dh.setLhl_madh(rs.getInt("lhl_madh"));
                dh.setLhl_ngaydat(rs.getTimestamp("lhl_ngaydat"));
                dh.setLhl_tongtien(rs.getBigDecimal("lhl_tongtien"));
                dh.setLhl_trangthai(rs.getString("lhl_trangthai"));
                dh.setLhl_makh(rs.getInt("lhl_makh"));
                dh.setLhl_manv(rs.getInt("lhl_manv"));
                return dh;
            }
        });
    }

    // Lấy đơn hàng theo ID
    public LHLDonHang getDonHangById(int id) {
        String sql = "SELECT * FROM lhl_donhang WHERE lhl_madh=?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(LHLDonHang.class));
    }
}
