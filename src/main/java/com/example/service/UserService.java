
package com.example.service;



import java.util.List;

import com.example.model.User;


public interface UserService {
	
	public List<User> getAllUser();
	
	public User getUser(int userId);
	
	public User addUser(User user) ;
	
	public void deleteUser(int userId);

	

}
