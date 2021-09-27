package com.dohyeong.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class Criteria {


	private int pageNum;
	private int amount;

	private String type;
	private String keyword;

	public Criteria() {
		this(1, 9);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	}
}
