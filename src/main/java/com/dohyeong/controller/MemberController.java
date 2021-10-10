package com.dohyeong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dohyeong.service.MemberService;

import lombok.extern.log4j.Log4j;

@Log4j
/* @RequestMapping("/member/*") */
@Controller
public class MemberController {

	
	
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
	
	@RequestMapping("/member/joinForm")
	public String joinForm() throws Exception {
		
		log.info("joinform");
		return "member/joinForm";
	}
	
	//@Autowired
	private MemberService service;

	// id �ߺ� üũ ��Ʈ�ѷ�
	@GetMapping(value = "/member/idCheck")
	//@ResponseBody
	public int idCheck(@RequestParam("userId") String userid) {
		System.out.println("--idcheck controller--");
		return service.userIdCheck(userid);
	}

	
}
