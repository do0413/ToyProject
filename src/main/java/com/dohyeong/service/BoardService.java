package com.dohyeong.service;

import java.util.List;

import com.dohyeong.domain.BoardVO;
import com.dohyeong.domain.Criteria;

public interface BoardService {

	//public List<BoardVO> getList();
	public List<BoardVO> getList(Criteria cri);
	public int getTotal(Criteria cri);
	
	public int Register(BoardVO board);
	
	public BoardVO get(Long bno);
	
	public String modify(BoardVO board);

	public int boardupdate(BoardVO board);
	
	public int remove(BoardVO board);
	
	//public List<BoardVO> getpageList(Criteria cri);

}
