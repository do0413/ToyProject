package com.dohyeong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dohyeong.domain.BoardVO;
import com.dohyeong.domain.*;
import com.dohyeong.service.BoardService;

import lombok.AllArgsConstructor;
//import lombok.extern.log4j.Log4j;

@Controller
//@RequestMapping("/board/*")
@AllArgsConstructor

public class BoardController {
	//�ݵ�� ���񽺸� �����ֵ��� ���������.
	private BoardService service;
	
	//����������>�Խ��Ǹ���Ʈ����
	//����¡ó��
	@RequestMapping(value="/board/boardlist")
	public String BoardList(Criteria cri, Model model) {
		model.addAttribute("list", service.getList());
		model.addAttribute("pageMaker", new PageDTO(cri,123));
		System.out.println("aaa");
		
		return "board/boardlist";
	}
	
	/*
	 * // @RequestMapping(value="/board/boardlist") // public String BoardList(Model
	 * model) { // model.addAttribute("list", service.getList()); //
	 * System.out.println("aaa"); // // return "board/boardlist"; // }
	 */	
	
	
	//�Խ��Ǹ���Ʈ>���������
	//requestmapping�� ��տ� board�� �־������. �ٵ� �ؿ� redirect����������� Ŭ�������������Ѱ������ �׳� ���� �־��ֱ����.
	@GetMapping(value="/board/register")
	public String Register( ) {
		return "board/register";
	}
	//���������>��Ϲ�ư�� ��������
	@RequestMapping(value="/board/register_st", method = RequestMethod.POST)
	public String Register(BoardVO board ) {
		System.out.println("----"+ board);
		int result = service.Register(board);
		System.out.println("-----2-"+ board);
		if(result==1) {
			System.out.println("-----if----" + result);
			return "redirect:/board/boardlist";
		}
		else {
			System.out.println("----else-----" + result);
			return null;
		}
		
	}
		
	//�Խ��Ǹ���Ʈ>������������
	//��������>����������>��ư������ ������Ʈ��Ų��
	@GetMapping({"/board/get","/board/modify"})
	public void get(@RequestParam("bno") Long bno, Model model) {
		System.out.println("---controller get---");
		
		model.addAttribute("getboard", service.get(bno));
	}
	
	//@RequestMapping(value="/board/modify_submit", method = RequestMethod.POST)
	@PostMapping(value="/board/modify_submit")
	public String modify(BoardVO board) {
		System.out.println("---modify controller---");
		System.out.println("boardvo------>" + board);
		int result = service.boardupdate(board);
		System.out.println("boardvo------>-"+ board);
		if(result==1) {
			System.out.println("-----if----" + result);
			return "redirect:/board/boardlist";
		}
		else {
			System.out.println("----else-----" + result);
			return null;
		}
		
	}
/*
	@PostMapping("/board/remove")
	public String remove(BoardVO board) {
		System.out.println("--remove controller--");
		int result = service.remove(board);
		System.out.println("--remove board--->"+ board);
		if(result==1) {
			System.out.println("�����Ϸ�");
			return "redirect:/board/boardlist";
		}
		else {
			System.out.println("��������");
			return null;
		}
	}
*/	
	@PostMapping("/board/remove")
	public String remove(BoardVO board) {
		System.out.println("--remove controller--");
		/*
		  User userView = service.view(userid);
		    model.addAttribute("userView", userView);
		    return "view";
*/
		int result = service.remove(board);
		System.out.println("--remove board--->"+ board);
		if(result==1) {
			System.out.println("�����Ϸ�");
			return "redirect:/board/boardlist";
		}
		else {
			System.out.println("��������");
			return null;
		}
	}
	
	//����¡ó��
	//@GetMapping("/board/list")
	//public void list(Criteria cri, Model model) {
	//	System.out.println("---pageing---controller---");
	//	model.addAttribute("list", service.getpageList(cri));
	//	model.addAttribute("pageMaker", new PageDTO(cri,123));
	//}

}
