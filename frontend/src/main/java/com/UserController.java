package com;


import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.UserDAO;

import com.model.User;

@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value="account",method=RequestMethod.GET)
	public String showaccount(Model m)
	{
		User user= new User();
		m.addAttribute(user);
		
		List<User> listUser=userDAO.retrieveUser();
		m.addAttribute("userList",listUser);
		return "Account";
	}
	
	
	@RequestMapping(value="user",method=RequestMethod.GET)
	public String showUser(Model m)
	{
		User user = new User();
		m.addAttribute(user);
		
		return "User";
	}
	
	
	
	@RequestMapping(value="AddUser",method=RequestMethod.POST)
	public String addUser(@ModelAttribute("user")User user,Model m)
	{
		user.setRole("ROLE_USER");
		user.setEnabled("True");
		userDAO.addUser(user);
		
		return "Login";
	}
			
	@RequestMapping(value="updateUser/{userName}",method=RequestMethod.GET)
	public String updateuser(@PathVariable("userName") String userName,Model m)
	{
		User user=userDAO.getUser(userName);
		m.addAttribute(user);
		
		List<User> listUser=userDAO.retrieveUser();
		m.addAttribute("userList",listUser);
		return "UpdateUser";
	}
	
	@RequestMapping(value="UpdateUser",method=RequestMethod.POST)
	public String updateMyUser(@ModelAttribute("user")User user,Model m)
	{
		userDAO.updateUser(user);
		
		List<User> listUser=userDAO.retrieveUser();
		m.addAttribute("userList",listUser);
		return "Account";
	}
	
	
			
}