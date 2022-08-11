package kr.smhrd.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.mapper.BagMapper;
import kr.smhrd.model.BoardVO;
import kr.smhrd.model.Criteria;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BagMapper mapper;
	
	
    /* 게시판 목록(페이징 적용) */
    @Override
    public List<BoardVO> getListPaging(Criteria cri) {
        
        return mapper.getListPaging(cri);
    }
	
    @Override
    public List<BoardVO> boardList() {
		
		return mapper.boardList();
	}
    
    @Override
    public int getTotal() {
		
		return mapper.getTotal();
	}
}
