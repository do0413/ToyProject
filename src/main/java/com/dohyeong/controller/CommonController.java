package com.dohyeong.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

//import com.dohyeong.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class CommonController {
	
	@GetMapping("/member/accessError")
	public void accessDenied(Authentication auth, Model model) {
		
		log.info("access Denied : " + auth);
		
		model.addAttribute("msg", "Access Denied");
	}
	
	
	@GetMapping("/member/customLogin")
	public void loginInput(String error, String logout, Model model) {
		//get방식 사용
		log.info("error : " + error);
		log.info("logout : " + logout);
		
		if (error != null) {
			model.addAttribute("error", "아이디나 비밀번호이 일치하지 않아요.");
		}
		
		if (logout != null) {
			
			model.addAttribute("logout", "Logout!!!!!");
		}
	}
	
	
	/*
	 * @GetMapping("/member/customLogout") public void logoutGET() {
	 * log.info("custom logout"); }
	 */
	
	@GetMapping("/member/customLogout")
	public void logoutGET(String error, String logout) {
		log.info("-logout--error-- : " + error);
		log.info("-logout--logout- : " + logout);
		
		log.info("custom logout");
	}
	

}
