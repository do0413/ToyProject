package com.dohyeong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dohyeong.service.MemberService;

import lombok.extern.log4j.Log4j;

@Log4j
/* @RequestMapping("/member/*") */
@Controller
public class MemberController {

	//private MemberService service;
	
	//all:������ ���ٰ���  	member: �α����ؾ� ���ٰ��� 	admin:�α���+�����ڱ���
	@GetMapping("/member/all")
	public void doAll() {
		
		log.info("do all can access everybody");
	}
	
	@GetMapping("/member/member")
	public void doMember() {
		
		log.info("loginde member");
	}
	
	@GetMapping("/member/admin")
	public void doAdmin() {
		
		log.info("admin only");
	}

	
}
