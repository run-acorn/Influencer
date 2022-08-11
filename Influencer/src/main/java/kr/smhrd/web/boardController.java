package kr.smhrd.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.model.BoardVO;
import kr.smhrd.model.Criteria;
import kr.smhrd.model.PageMakeDTO;
import kr.smhrd.service.BoardService;

@Controller
public class boardController {
	
	@Autowired
	private BoardService service;
	
	
    /* 게시판 목록 페이지 접속(페이징 적용) */
    @RequestMapping("/getListPaging.do")
    @ResponseBody
    public Map boardListGET(Model model, Criteria cri) {
        
    	Map map = new HashMap();
    	
        List<BoardVO> list = service.getListPaging(cri);
        
        int total = service.getTotal();
        
        PageMakeDTO pageMake = new PageMakeDTO(cri, total);
        
        map.put("list", list);
        map.put("pageMake", pageMake);
        
        
        
        return map;
    }
    
}
