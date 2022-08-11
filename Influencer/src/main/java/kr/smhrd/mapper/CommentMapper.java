package kr.smhrd.mapper;

import java.util.List;

import kr.smhrd.model.CommentVO;

public interface CommentMapper {

	public void commentInsert(CommentVO vo);

	public List<CommentVO> commentList(int board_no);

	public void commentDelete(CommentVO vo);

}
