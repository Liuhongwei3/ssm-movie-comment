package com.example.controller;

import com.example.pojo.Admin;
import com.example.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author 28731
 */

@Controller
@RequestMapping("admin")
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping("/selectAdminByName")
    @ResponseBody
    public List<Admin> selectAdminByName(String adminName) {
        List<Admin> list = adminService.selectAdminByName(adminName);
        return list.size() == 0 ? null : list;
    }
}
