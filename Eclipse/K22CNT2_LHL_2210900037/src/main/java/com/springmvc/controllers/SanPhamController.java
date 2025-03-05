package com.springmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.beans.SanPham;
import com.springmvc.dao.SanPhamDao;

@Controller
public class SanPhamController {

    @Autowired
    SanPhamDao dao;

    // Hiển thị danh sách sản phẩm (đã sửa URL)
    @RequestMapping("/SanPham/list")
    public String viewSanPhamList(Model m) {
        List<SanPham> list = dao.getAllSanPham();
        m.addAttribute("list", list);
        return "SanPham/list";
    }

    // Form thêm sản phẩm
    @RequestMapping("/SanPham/add")
    public String showAddForm(Model m) {
        m.addAttribute("command", new SanPham());
        return "SanPham/add"; // Trả về view sanpham/add.jsp
    }

    // Lưu sản phẩm mới
    @RequestMapping(value = "/SanPham/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("pb") SanPham sp) {
        dao.save(sp);
        return "redirect:/SanPham/list"; // Redirect đến danh sách sản phẩm
    }

    // Form chỉnh sửa sản phẩm
    @RequestMapping("/SanPham/edit/{id}")
    public String edit(@PathVariable int id, Model m) {
        SanPham sp = dao.getSanPhamById(id);
        m.addAttribute("command", sp);
        return "SanPham/edit"; // Trả về view sanpham/edit.jsp
    }

    // Lưu chỉnh sửa
    @RequestMapping(value = "/SanPham/editsave", method = RequestMethod.POST)
    public String editsave(@ModelAttribute("pb") SanPham sp) {
        dao.update(sp);
        return "redirect:/SanPham/list"; // Redirect đến danh sách sản phẩm
    }

    // Xóa sản phẩm
    @RequestMapping("/SanPham/delete/{id}")
    public String delete(@PathVariable int id) {
        dao.delete(id);
        return "redirect:/SanPham/list"; // Redirect đến danh sách sản phẩm
    }

    // Ánh xạ đến trang menu
    @RequestMapping("/menu")
    public String showMenu() {
        return "menu"; // Trả về view menu.jsp
    }
}
