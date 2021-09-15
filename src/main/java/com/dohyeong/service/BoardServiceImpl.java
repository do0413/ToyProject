package com.dohyeong.service;

import java.util.List;

import org.springframework.stereotype.Service;
import com.dohyeong.mapper.BoardMapper;

import com.dohyeong.domain.BoardVO;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {

	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> getList() {
		System.out.println("--service getlist--");
		return mapper.getList();
	}

	@Override
	public int Register(BoardVO board) {
		System.out.println("--service register--");
		return mapper.Register(board);
	}

	@Override
	public BoardVO get(Long bno) {
		System.out.println("--get serviceimpl--");
		return mapper.read(bno);
	}

	/*@Override
	public String modify(BoardVO board) {
		System.out.println("--service modify--");
		return mapper.boardupdate(board);
	}*/

	@Override
	public int boardupdate(BoardVO board) {
		System.out.println("--service modify2--");
		return mapper.boardupdate(board);
	}

	@Override
	public String modify(BoardVO board) {
		System.out.println("--modify serviceimpl--");
		return null;
	}

	@Override
	public int remove(BoardVO board) {
		System.out.println("--remove serviceimpl--");
		return mapper.remove(board);
	}

}