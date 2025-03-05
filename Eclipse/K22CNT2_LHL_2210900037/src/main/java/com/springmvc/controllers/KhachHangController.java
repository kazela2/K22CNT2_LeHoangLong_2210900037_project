package com.springmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.beans.KhachHang;
import com.springmvc.dao.KhachHangDao;

@Controller
public class KhachHangController {

    @Autowired
    KhachHangDao dao;

    // Hiển thị danh sách khách hàng
    @RequestMapping("/khachhang/list")
    public String viewKhachHangList(Model m) {
        List<KhachHang> list = dao.getAllKhachHang();
        m.addAttribute("list", list);
        return "khachhang/list"; 
    }

    // Form thêm khách hàng
    @RequestMapping("/khachhang/add")
    public String showAddForm(Model m) {
        m.addAttribute("kh", new KhachHang());
        return "khachhang/add"; 
    }

    // Lưu khách hàng mới
    @RequestMapping(value = "/khachhang/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("kh") KhachHang kh) {
        dao.save(kh);
        return "redirect:/khachhang/list"; // Redirect đến danh sách khách hàng
    }

    // Form chỉnh sửa khách hàng
    @RequestMapping("/khachhang/edit/{id}")
    public String edit(@PathVariable int id, Model m) {
        KhachHang kh = dao.getKhachHangById(id);
        m.addAttribute("command", kh);
        return "khachhang/edit"; // Trả về view khachhang/edit.jsp
    }

    // Lưu chỉnh sửa khách hàng
    @RequestMapping(value = "/khachhang/editsave", method = RequestMethod.POST)
    public String editsave(@ModelAttribute("kh") KhachHang kh) {
        dao.update(kh);
        return "redirect:/khachhang/list"; // Redirect đến danh sách khách hàng
    }

    // Xóa khách hàng
    @RequestMapping("/khachhang/delete/{id}")
    public String delete(@PathVariable int id) {
        dao.delete(id);
        return "redirect:/khachhang/list"; // Redirect đến danh sách khách hàng
    }

}
