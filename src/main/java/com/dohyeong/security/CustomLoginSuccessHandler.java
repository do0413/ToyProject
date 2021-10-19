package com.dohyeong.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.ui.Model;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler{
	
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication auth, Model model) throws IOException, ServletException {
		log.warn("Login Success");
		//int loginPoint=1;
		
		List<String> roleNames = new ArrayList<>();
		
		auth.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});
		
		log.warn("ROLE NAMES : " + roleNames );
		log.warn("auth :" + auth);
		
		/*ROLE_ADMIN권한을 가진 사용자는 로그인후 바로 /member/admin로 이동하게 됩니다.*/
		if(roleNames.contains("ROLE_ADMIN")) {
			//auth=(Authentication)auth.getAuthorities();
			System.out.println("------------");
			System.out.println("------roleNames------" + roleNames);
			System.out.println("------------");
			model.addAttribute("roleNames",roleNames);
			response.sendRedirect("/");
			return;
		}
		
		if (roleNames.contains("ROLE_MEMBER")) {
			//auth=(Authentication)auth.getAuthorities();
			System.out.println("------------");
			System.out.println("------roleNames------" + roleNames);
			System.out.println("------------");
			model.addAttribute("roleNames",roleNames);
			response.sendRedirect("/");                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
			return;
		}
		
		System.out.println("----ddddd-------");
		model.addAttribute("roleNames",roleNames);
		response.sendRedirect("/");
	}
	
	
	
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication auth) throws IOException, ServletException {
		log.warn("Login Success--2---");
		//int loginPoint=1;
		
		List<String> roleNames = new ArrayList<>();
		
		auth.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});
		
		log.warn("ROLE NAMES : " + roleNames );
		log.warn("auth :" + auth);
		
		/*ROLE_ADMIN권한을 가진 사용자는 로그인후 바로 /member/admin로 이동하게 됩니다.*/
		if(roleNames.contains("ROLE_ADMIN")) {
			//auth=(Authentication)auth.getAuthorities();
			System.out.println("------------");
			System.out.println("------roleNames------" + roleNames);
			System.out.println("------------");
			
			response.sendRedirect("/");
			return;
		}
		
		if (roleNames.contains("ROLE_MEMBER")) {
			//auth=(Authentication)auth.getAuthorities();
			System.out.println("------------");
			System.out.println("------roleNames------" + roleNames);
			System.out.println("------------");
			response.sendRedirect("/");                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
			return;
		}
		
		response.sendRedirect("/");
	}
	
	

}
