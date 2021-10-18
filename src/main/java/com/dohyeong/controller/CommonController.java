package com.dohyeong.controller;

import javax.servlet.http.HttpSession;

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
	public void loginInput(String error, String logout, Model model,Authentication auth) {
		//get��� ���
		log.info("error : " + error);
		log.info("logout : " + logout);
		log.info("auth : " + auth);
		
		if (error != null) {
			model.addAttribute("error", "���̵� ��й�ȣ�� ��ġ���� �ʾƿ�.");
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
	public String logoutGET(HttpSession session) {
		session.invalidate();

		return "redirect:/";
		
	}
	

}
