package com.dohyeong.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {

	private String userid;
	private String userpw;
	private String userpw2;
	private String username;
	private boolean enabled;
	
	private Date regDate;
	private Date updateDate;
	private List<AuthVO> authList;
	private String auth;
	
	private String userNick;
	private String userAddr;
	private String userpost;
	private String u_agree;
	
}
