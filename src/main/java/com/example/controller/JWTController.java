package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.model.JwtResponse;
import com.example.model.User;
import com.example.service.CustomUserDetailService;
import com.example.util.JWTUtil;

@RestController
public class JWTController {
	@Autowired
	private CustomUserDetailService customUserDetailService;
	
	@Autowired
	private JWTUtil jwtUtil;
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	
	@PostMapping("/token")
	public ResponseEntity<?> generateToken(@RequestBody User user){
		

		UserDetails userDetails = customUserDetailService.loadUserByUsername(user.getUserName());
		
		String token = jwtUtil.generateToken(userDetails);

		
		 return ResponseEntity.ok(new JwtResponse(token));
		
		
	}

	@GetMapping("/welcome")
	public String welcome() {
		
		return "Hello ";
	}
}
