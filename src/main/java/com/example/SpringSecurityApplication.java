package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.example.dao.UserDAO;
import com.example.model.User;

@SpringBootApplication
public class SpringSecurityApplication implements CommandLineRunner{

@Autowired
	private UserDAO userDao;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	public static void main(String[] args) {
		SpringApplication.run(SpringSecurityApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		// TODO Auto-generated method stub
		
			// TODO Auto-generated method stub
//			User user = new User();
//			
//			user.setUserName("riddhi");
//			user.setPassword(this.passwordEncoder.encode("123"));
//		
//			user.setRole("ROLE_NORMAL");
//			
//			this.userDao.save(user);
//			
//			User user1 = new User();
//			
//			user1.setUserName("hina");
//			user1.setPassword(this.passwordEncoder.encode("123"));
//			user1.setRole("ROLE_ADMIN");
//			this.userDao.save(user1);
		}
	}


