package com.example.mapper;

import com.example.pojo.Admin;

import java.util.List;

/**
 * @author 28731
 */
public interface AdminMapper {
    /**
     * 根据 adminName 查询管理员
     *
     * @param adminName
     * @return
     */
    List<Admin> selectAdminByName(String adminName);
}
