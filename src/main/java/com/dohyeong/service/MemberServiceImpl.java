package com.dohyeong.service;


import org.springframework.stereotype.Service;

import com.dohyeong.domain.MemberVO;
import com.dohyeong.mapper.MemberMapper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	private MemberMapper mapper;
	
	/*
	 * @Override //public int userIdCheck(String userid) { public int
	 * userIdCheck(String userid) { System.out.print("--usercheck--");
	 * 
	 * return mapper.checkid(userid); }
	 */

	@Override
	public int checkid(String userid) {
		System.out.println("--checkid servicepl--" + userid);
		return mapper.checkid(userid);
	}

	
	//@SuppressWarnings("null")
	@Override 
	 public int insertMember(MemberVO memberVO) {
		 System.out.println("--insertMember servicepl--" + memberVO); 
		 //BCryptPasswordEncoder bcryptPasswordEncoder = null;
		 BCryptPasswordEncoder bcryptPasswordEncoder = new BCryptPasswordEncoder();
		memberVO.setUserpw(bcryptPasswordEncoder.encode(memberVO.getUserpw()));
		/*
		 * @Override public void SignUp(UserDTO dto) { //bcryptPasswordEncoder로 암호화함
		 * dto.setPassWord(bcryptPasswordEncoder.encode(dto.getPassWord()));
		 * userDAO.signUp(dto); }
		 */
		 return  mapper.insertMember(memberVO); }
	
	
	/*
	 * @Override public int insertMember(String parm) {
	 * System.out.println("--insertMember servicepl--" + parm); parm. return
	 * mapper.insertMember(parm); }
	 */

}
