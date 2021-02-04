package com.john.controller;

import com.john.bean.User;
import com.john.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
public class HelloController {
    @Autowired
    private UserService userService;

    @RequestMapping("/hello")
    public String Hello(Map<String, Object> map) {
        List<User> users = userService.getUsers();
        map.put("users", users);
        return "/User";
    }
}
