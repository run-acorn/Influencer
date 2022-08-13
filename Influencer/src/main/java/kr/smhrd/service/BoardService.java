package kr.smhrd.service;


import java.util.List;

import org.springframework.stereotype.Service;

import kr.smhrd.model.BoardVO;
import kr.smhrd.model.Criteria;
import kr.smhrd.model.MemberVO;

@Service
public interface BoardService {
	
	// 게시판 페이징
	public List<BoardVO> getListPaging(Criteria cri);
	
	// 게시판 총 개수
	public int getTotal();
	
	// 내 게시글 페이징
	public List<BoardVO> myWriteList(MemberVO vo);
	
	// 내 게시글 총 개수
	public int getMyTotal(String nick);

	
}
