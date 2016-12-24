package com.java.home.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.home.pojo.User;
import com.java.home.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
    private UserService userService;
	
	@RequestMapping("/allUser")  
    public String findAllUser(HttpServletRequest request,ModelAndView model){  
		
        List<User> user = this.userService.findAllUser();  
        request.setAttribute("user", user);  
        return "/allUser";  
}
}