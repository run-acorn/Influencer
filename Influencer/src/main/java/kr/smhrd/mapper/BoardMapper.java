package kr.smhrd.mapper;

import java.util.List;

import kr.smhrd.model.BoardVO;

public interface BoardMapper {

	public int boardinsert(BoardVO vo);

	public List<BoardVO> boardList();

	public List<BoardVO> boardView(int board_no);

	public BoardVO goboardUpdate(int board_no);

	public void boardUpdate(BoardVO vo);

	public void boardDelete(int board_no);
	
	
}
