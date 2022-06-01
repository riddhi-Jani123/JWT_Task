package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.dao.UserDAO;
import com.example.model.CustomUserDetail;
import com.example.model.User;

@Service
public class CustomUserDetailService implements UserDetailsService {

	@Autowired
	private UserDAO userDao;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		User user = this.userDao.findByUserName(username);
		System.out.println("user "+user);
		if (user == null) {
			throw new UsernameNotFoundException("no user");
		}
		return new CustomUserDetail(user);
	}

}
