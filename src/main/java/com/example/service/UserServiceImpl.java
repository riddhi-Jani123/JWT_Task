
package com.example.service;

import java.util.ArrayList;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.UserDAO;

import com.example.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO userDao;

	// get all user
		public List<User> getAllUser(){
			
			return userDao.findAll();
			
			
		}
		
		//get single user
		
		public User getUser(int userId) {
			
			
			return userDao.findByUserId(userId);
			
			
		}
		
		
		//add user
		
		public User addUser(User user) {
				
			user.getPassword();
			
			return userDao.save(user);
		}
		
		
		//delete user
		
		public void deleteUser(int userId) {
			
			userDao.deleteById(userId);
		}
	}
