package com.dohyeong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dohyeong.domain.MemberVO;
import com.dohyeong.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
/* @RequestMapping("/member/*") */
@Controller
@AllArgsConstructor
public class MemberController {

	
	
	//all:누구나 접근가능  	member: 로그인해야 접근가능 	admin:로그인+관리자권한
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
	
	/*
	 * @GetMapping("/member/login") public void login() {
	 * 
	 * log.info("--login--"); }
	 */
	
	@RequestMapping("/member/joinForm")
	public String joinForm() throws Exception {
		
		log.info("joinform");
		return "member/joinForm";
	}
	
	@RequestMapping("/member/loginForm")
	public String loginForm() throws Exception {
		
		log.info("loginform");
		return "member/customLogin";
	}
	
	//ajax 아이디중복확인
	//
	  private MemberService service;
	  
	  @RequestMapping(value="/member/idCheck", method = RequestMethod.POST)
	  @ResponseBody
	  public String idCheck(@RequestParam String userid) throws Exception {
			 System.out.println("--idcheck controller--" + userid );
			 //return service.userIdCheck(userid);
			 int res = service.checkid(userid);
			 
			 if (res > 0) {
				 
				 return "OK";
			 }
			 else {
				 return "fail";
			 }
			 
		 }
	  
	  //회원가입
	  @PostMapping("/member/joinProcess")
	  public String insertMember(MemberVO memberVO) {

		  System.out.println("--insertmember controller--" + memberVO);
		  int result = service.insertMember(memberVO);
		  
		  if(result == 2) {
			  System.out.println("--insertmember controller-if--" + result);
			  return "member/customLogin";
			  
		  }
		  else {
			  System.out.println("--insertmember controller-else--" + result);
			  return "member/joinForm";
		  }	  
		  
	  }
	  
	
}
