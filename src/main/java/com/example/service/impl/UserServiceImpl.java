package com.example.service.impl;

import com.example.mapper.UserMapper;
import com.example.pojo.User;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> queryUserPage(Integer startRows) {
        return userMapper.queryUserPage(startRows);
    }

    @Override
    public List<User> selectUserPage(String userName, String userSex, Integer startRows) {
        return userMapper.selectUserPage(userName, userSex, startRows);
    }

    @Override
    public Integer getRowCount(String userName, String userSex) {
        return userMapper.getRowCount(userName, userSex);
    }

    @Override
    public Integer createUser(String userName, String userSex, String userPwd) {
        return userMapper.createUser(userName, userSex, userPwd);
    }

    @Override
    public List<User> selectUserById(int userId) {
        return userMapper.selectUserById(userId);
    }

    @Override
    public List<User> selectUserByName(String userName) {
        return userMapper.selectUserByName(userName);
    }

    @Override
    public Integer deleteUserById(int userId) {
        return userMapper.deleteUserById(userId);
    }

//    @Override
//    public Integer deleteUserByIdList(@Param("list") List userIds) {
//        return userMapper.deleteUserByIdList(userIds);
//    }

    @Override
    public Integer updateUserById(User user) {
        return userMapper.updateUserById(user);
    }


}