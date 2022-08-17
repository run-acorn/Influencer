package kr.smhrd.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.mapper.BagMapper;
import kr.smhrd.mapper.BoardMapper;
import kr.smhrd.model.BoardVO;
import kr.smhrd.model.Criteria;
import kr.smhrd.model.MemberVO;
import kr.smhrd.model.Review;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	@Autowired
	private BagMapper bmapper;
	
	
    /* 게시판 목록(페이징 적용) */
    @Override
    public List<BoardVO> getListPaging(Criteria cri) {
        
        return mapper.getListPaging(cri);
    }
	
    @Override
    public int getTotal() {
		
		return mapper.getTotal();
	}
    
    @Override
    public List<BoardVO> myWriteList(MemberVO vo){
    	return mapper.myWriteList(vo);
    }
    
    @Override
    public int getMyTotal(String nick) {
		
		return mapper.getMyTotal(nick);
	}
    
    
    
}
