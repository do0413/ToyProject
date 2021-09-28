package com.dohyeong.mapper;

import java.util.List;

import com.dohyeong.domain.BoardVO;
import com.dohyeong.domain.Criteria;

public interface BoardMapper {
	
	//public List<BoardVO> getList();
	public List<BoardVO> getList(Criteria cri);
	public int Register(BoardVO board);
	public BoardVO read(Long bno);
	public int modify(BoardVO board);
	public int boardupdate(BoardVO board);
	public int remove(BoardVO board);
	//public List<BoardVO> getpageList(Criteria cri);

}
