package kr.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.mapper.CommentMapper;
import kr.smhrd.model.CommentVO;

@Controller
public class CommentController {

	@Autowired
	private CommentMapper mapper;
	
	
	@RequestMapping("/commentInsert.do")
	@ResponseBody
	public void commentInsert(CommentVO vo) {
		mapper.commentInsert(vo);
	}
	
	
	@RequestMapping("/commentList.do")
	@ResponseBody
	public List<CommentVO> commentList(int board_no) {
		List<CommentVO> list = mapper.commentList(board_no);
		return list;
	}
	
	@RequestMapping("/commentDelete.do")
	@ResponseBody
	public void commentDelete(CommentVO vo) {
		mapper.commentDelete(vo);
	}
	
	
	
}
