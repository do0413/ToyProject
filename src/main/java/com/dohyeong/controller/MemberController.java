package com.dohyeong.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.dohyeong.service.MemberService;

@RequestMapping("/member/*")
public class MemberController {

	private MemberService service;
	
	//ȸ������
	@RequestMapping("./joinForm")
	public String joinForm() throws Exception {
		return "memeber/joinForm";
	}
	
	
	//�α���
	

	
}
