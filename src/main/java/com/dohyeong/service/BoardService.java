package com.dohyeong.service;

import java.util.List;

import com.dohyeong.domain.BoardVO;

public interface BoardService {

	public List<BoardVO> getList();
	
	public int Register(BoardVO board);
	
	public BoardVO get(Long bno);
	
	public String modify(BoardVO board);

	public int boardupdate(BoardVO board);
	
	public int remove(BoardVO board);

}
