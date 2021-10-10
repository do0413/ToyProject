package com.dohyeong.service;

import com.dohyeong.domain.MemberVO;
import com.dohyeong.mapper.MemberMapper;

public class MemberServiceImpl implements MemberService {

	private MemberMapper mapper;
	
	@Override
	public int userIdCheck(String userid) {
		System.out.print("--usercheck--");
		
		return mapper.checkid(userid);
	}
	

}
