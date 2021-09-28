package com.dohyeong.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
//@ToString
public class Criteria {

	private int pageNum;
	private int amount;

	private int startIndex;
	// private String type;
	// private String keyword;

	public Criteria() {
		this(1, 10, 1);
	}

	public Criteria(int pageNum, int amount, int startIndex) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.startIndex = startIndex;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
		this.startIndex = (this.pageNum - 1) * this.amount;
	}
}
