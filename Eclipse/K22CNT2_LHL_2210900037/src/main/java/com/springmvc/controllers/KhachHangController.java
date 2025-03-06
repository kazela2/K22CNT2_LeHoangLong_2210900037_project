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
    @RequestMapping("/KhachHang/list")
    public String viewKhachHangList(Model m) {
        List<KhachHang> list = dao.getAllKhachHang();
        m.addAttribute("listkh", list);  // Sửa lại tên attribute trong Model cho đúng với JSP
        return "KhachHang/list";  // Trả về view khachhang/list.jsp
    }

    // Form thêm khách hàng
    @RequestMapping("/KhachHang/add")
    public String showAddForm(Model m) {
        m.addAttribute("command", new KhachHang());
        return "KhachHang/add";  // Trả về view khachhang/add.jsp
    }

    // Lưu khách hàng mới
    @RequestMapping(value = "/KhachHang/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("kh") KhachHang kh) {
        dao.save(kh);
        return "redirect:/KhachHang/list";  // Redirect đến danh sách khách hàng
    }

    // Form chỉnh sửa khách hàng
    @RequestMapping("/KhachHang/edit/{id}")
    public String edit(@PathVariable int id, Model m) {
        KhachHang kh = dao.getKhachHangById(id);
        m.addAttribute("command", kh);
        return "KhachHang/edit";  // Trả về view khachhang/edit.jsp
    }

    // Lưu chỉnh sửa khách hàng
    @RequestMapping(value = "/KhachHang/editsave", method = RequestMethod.POST)
    public String editsave(@ModelAttribute("kh") KhachHang kh) {
        dao.update(kh);
        return "redirect:/KhachHang/list";  // Redirect đến danh sách khách hàng
    }

    // Xóa khách hàng
    @RequestMapping("/KhachHang/delete/{id}")
    public String delete(@PathVariable int id) {
        dao.delete(id);
        return "redirect:/KhachHang/list";  // Redirect đến danh sách khách hàng
    }
}
