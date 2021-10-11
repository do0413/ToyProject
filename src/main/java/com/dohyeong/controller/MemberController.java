package com.dohyeong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dohyeong.domain.MemberVO;
import com.dohyeong.service.MemberService;

import lombok.extern.log4j.Log4j;

@Log4j
/* @RequestMapping("/member/*") */
@Controller
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
	
	@RequestMapping("/member/joinForm")
	public String joinForm() throws Exception {
		
		log.info("joinform");
		return "member/joinForm";
	}
	//
	//ajax 아이디중복확인
	//
	  private MemberService service;
	  
	 // id 중복 체크 컨트롤러
	  
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
	  
	  
	 //@GetMapping("/member/idCheck") 
	/* @RequestMapping(value="/member/idCheck", method = RequestMethod.POST)
	 @ResponseBody 
	 public int idCheck(@RequestParam("userid") String userid) throws Exception {
		 System.out.println("--idcheck controller--" + userid );
		 //return service.userIdCheck(userid);
		 int res = service.checkid(userid);
		 
		 if (res > 0) {
		
			 return res;
		 }
		 else {
			 return res;
		 }
		 
	 }*/
		 //System.out.println("--idcheck controller--"); 
	 
		 //return reg_service.userIdCheck(user_id); 
		 //}
	 
	
	/*
	 * @Autowired private MemberService memberService;
	 * 
	 * @RequestMapping(value = "member/checkid", method = RequestMethod.POST)
	 * 
	 * @ResponseBody public String idcheck(@RequestParam("userid") String userid)
	 * throws Exception { System.out.println("userid=" + userid); String str = "";
	 * int idcheck = memberService.checkid(userid); if (idcheck == 1) { // 이미 존재하는
	 * 계정 str = "NO"; } else { // 사용 가능한 계정 str = "YES"; } System.out.println(str);
	 * return str; }
	 */
	
}
