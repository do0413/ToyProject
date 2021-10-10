package com.dohyeong.service;


import org.springframework.stereotype.Service;

import com.dohyeong.mapper.MemberMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	private MemberMapper mapper;
	
	@Override
	public int userIdCheck(String userid) {
		System.out.print("--usercheck--");
		
		return mapper.checkid(userid);
	}
	

}
