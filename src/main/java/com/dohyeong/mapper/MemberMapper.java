package com.dohyeong.mapper;

import com.dohyeong.domain.MemberVO;

public interface MemberMapper {
	
	//public int insertMember(MemberVO memberVO);
	public MemberVO read(String userid);
	public int checkid(String userid);
	public int insertMember(String parm);

}
