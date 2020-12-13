package com.example.controller;

import com.example.pojo.User;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/queryUserPage")
    @ResponseBody
    public List<User> queryUserPage() {
//        int pageNow = page == null ? 1 : page;
//        int pageSize = 5;
//        int startRows = pageSize * (pageNow - 1);
        return userService.queryUserPage();
    }

    @RequestMapping("/selectUserPage")
    @ResponseBody
    public List<User> selectUserPage(String userName, String userSex, Integer page) {
        int pageNow = page == null ? 1 : page;
        int pageSize = 5;
        int startRows = pageSize * (pageNow - 1);
        return userService.selectUserPage(userName, userSex, startRows);
    }

    @RequestMapping("/getRowCount")
    @ResponseBody
    public Integer getRowCount(String userName, String userSex) {
        return userService.getRowCount(userName, userSex);
    }

    @RequestMapping("/createUser")
    @ResponseBody
    public Integer createUser(@RequestBody User user) {
        return userService.createUser(user.getUserName(), user.getUserSex(), user.getUserPwd());
    }

    @RequestMapping("/selectUserById")
    @ResponseBody
    public List<User> selectUserById(int userId) {
        return userService.selectUserById(userId);
    }

    @RequestMapping("/selectUserByName")
    @ResponseBody
    public List<User> selectUserByName(String userName) {
        return userService.selectUserByName(userName);
    }

    @RequestMapping("/getUserPwdById")
    @ResponseBody
    public String getUserPwdById(int userId) {
        return userService.selectUserById(userId).get(0).getUserPwd();
    }

    @RequestMapping("/getUserPwdByName")
    @ResponseBody
    public String getUserPwdByName(String userName) {
        List<User> list = userService.selectUserByName(userName);
        return list.size() == 0 ? null : list.get(0).getUserPwd();
    }

    @RequestMapping("/deleteUserById")
    @ResponseBody
    public Integer deleteUserById(int userId) {
        return userService.deleteUserById(userId);
    }

//    @RequestMapping(value = "/deleteUserByIdList")
//    @ResponseBody
//    public Integer deleteUserByIdList(String userIdList) {
//        String userIdListSub = userIdList.substring(0, userIdList.length()-1);
////        String[] userIds = userIdList.split(",");
//
//        List userIds = new ArrayList();
//        for (String userIdStr: userIdListSub.split(",")){
//            userIds.add(userIdStr.trim());
//        }
//        return userService.deleteUserByIdList(userIds);
//    }

    @RequestMapping("/updateUserById")
    @ResponseBody
    public Integer updateUserById(@RequestBody User user) {
        System.out.println("----------------" + user.getUserName());
        return userService.updateUserById(user);
    }
}