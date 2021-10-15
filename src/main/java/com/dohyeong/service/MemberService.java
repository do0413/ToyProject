package com.dohyeong.service;

import com.dohyeong.domain.MemberVO;

//import com.dohyeong.domain.MemberVO;

public interface MemberService {

	public int checkid(String userid);

	public int insertMember(MemberVO memberVO);

	//public int insertMember(String parm);

	
}
