package com.dohyeong.domain;

import lombok.Data;

@Data
public class AttachFileDTO {
	
	private String fileName; //���������̸�
	private String uploadPath; //���ε� ���
	private String uuid; // uuid��
	private boolean image; //�̹�������

}
