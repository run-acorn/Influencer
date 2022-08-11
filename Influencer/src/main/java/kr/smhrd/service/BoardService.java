package kr.smhrd.service;


import java.util.List;

import org.springframework.stereotype.Service;

import kr.smhrd.model.BoardVO;
import kr.smhrd.model.Criteria;

@Service
public interface BoardService {
	
	public List<BoardVO> getListPaging(Criteria cri);
	
	public List<BoardVO> boardList();
	
	/* 게시판 총 개수 */
	public int getTotal();
	
}
