package com.dohyeong.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.dohyeong.service.MemberService;

@RequestMapping("/member/*")
public class MemberController {

	private MemberService service;
	
	//회원가입
	@RequestMapping("./joinForm")
	public String joinForm() throws Exception {
		return "memeber/joinForm";
	}
	
	
	//로그인
	

	
}
