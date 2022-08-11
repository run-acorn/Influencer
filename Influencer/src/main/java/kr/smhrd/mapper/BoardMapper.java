package kr.smhrd.mapper;

import java.util.List;

import kr.smhrd.model.BoardVO;
import kr.smhrd.model.Criteria;

public interface BoardMapper {

	public int boardinsert(BoardVO vo);

	public List<BoardVO> boardList();

	public List<BoardVO> boardView(int board_no);

	public BoardVO goboardUpdate(int board_no);

	public void boardUpdate(BoardVO vo);

	public void boardDelete(int board_no);
	
	/* 페이징 */
	public List<BoardVO> getListPaging(Criteria cri);
	
	/* 게시판 총 개수 */
	public int getTotal();

	public List<BoardVO> myWriteList(String nick);
	
}
