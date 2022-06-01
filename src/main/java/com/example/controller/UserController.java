package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.model.User;
import com.example.service.UserService;


	@RestController
	@RequestMapping("/users")
	public class UserController {

		@Autowired
		private UserService userService;
		
		@GetMapping("/")
		public List<User> getallUsers(){
			
			return this.userService.getAllUser();	
			
		}
		
		
		@GetMapping("/{userId}")
		public User getUser(@PathVariable("userId") int userId) {
			
			return this.userService.getUser(userId);
		}
		

		@PostMapping("/add")
		public User add(@RequestBody User user) {
			
			
			return this.userService.addUser(user);
		}
		
		@PutMapping("/")
		public User update(@RequestBody User user) {
			
			
			return this.userService.addUser(user);
		}
		
		@DeleteMapping("/{userId}")
		public void delete(@PathVariable("userId") int userId){
			
			userService.deleteUser(userId);
			
		}
}
