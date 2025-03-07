package com.springmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.beans.LHLDonHang;
import com.springmvc.dao.LHLDonHangDao;

@Controller
public class LHLDonHangController {

    @Autowired
    LHLDonHangDao dao;

    // Hiển thị danh sách đơn hàng
    @RequestMapping("/DonHang/list")
    public String viewDonHangList(Model m) {
        List<LHLDonHang> list = dao.getAllDonHang();
        m.addAttribute("listdh", list);
        return "DonHang/list";  // Trả về view donhang/list.jsp
    }

    // Form thêm đơn hàng
    @RequestMapping("/DonHang/add")
    public String showAddForm(Model m) {
        m.addAttribute("command", new LHLDonHang());
        return "DonHang/add";  // Trả về view donhang/add.jsp
    }

    // Lưu đơn hàng mới
    @RequestMapping(value = "/DonHang/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("dh") LHLDonHang dh) {
        dao.save(dh);
        return "redirect:/DonHang/list";  // Redirect đến danh sách đơn hàng
    }

    // Form chỉnh sửa đơn hàng
    @RequestMapping("/DonHang/edit/{id}")
    public String edit(@PathVariable int id, Model m) {
        LHLDonHang dh = dao.getDonHangById(id);
        m.addAttribute("command", dh);
        return "DonHang/edit";  // Trả về view donhang/edit.jsp
    }

    // Lưu chỉnh sửa đơn hàng
    @RequestMapping(value = "/DonHang/editsave", method = RequestMethod.POST)
    public String editsave(@ModelAttribute("dh") LHLDonHang dh) {
        dao.update(dh);
        return "redirect:/DonHang/list";  // Redirect đến danh sách đơn hàng
    }

    // Xóa đơn hàng
    @RequestMapping("/DonHang/delete/{id}")
    public String delete(@PathVariable int id) {
        dao.delete(id);
        return "redirect:/DonHang/list";  // Redirect đến danh sách đơn hàng
    }
}
