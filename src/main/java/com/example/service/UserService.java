package com.example.service;

import com.example.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {

    /**
     * 分页查询 User
     *
     * @return List<User>
     */
    List<User> queryUserPage();

    /**
     * 分页查询 User 带条件
     *
     * @param userName
     * @param userSex
     * @param startRows
     * @return
     */
    List<User> selectUserPage(@Param("userName") String userName, @Param("userSex") String userSex, @Param("startRows") Integer startRows);

    /**
     * 查询 User 个数
     *
     * @param userName
     * @param userSex
     * @return
     */
    Integer getRowCount(@Param("userName") String userName, @Param("userSex") String userSex);

    /**
     * 添加 User
     *
     * @param userName
     * @param userSex
     * @param userPwd
     * @return 返回码
     */
    Integer createUser(String userName, String userSex, String userPwd);

    /**
     * 根据 userId 查询用户
     *
     * @param userId
     * @return
     */
    List<User> selectUserById(int userId);

    /**
     * 根据 userId 查询用户
     *
     * @param userName
     * @return
     */
    List<User> selectUserByName(String userName);

    /**
     * 根据 userId 删除用户
     *
     * @param userId
     * @return 返回码
     */
    Integer deleteUserById(int userId);

    /**
     * 根据 userId 更新用户
     *
     * @param user
     * @return 返回码
     */
    Integer updateUserById(User user);

}