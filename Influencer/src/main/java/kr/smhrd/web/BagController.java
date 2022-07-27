package kr.smhrd.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.mapper.BagMapper;

@Controller    //FrontController임을 알려주는 annotation
public class BagController {
	
	//DB 쿼리문을 수행 할 수 있는 인터페이스 생성
	@Autowired   //DI기법 사용, 자동 연결
	private BagMapper mapper;
	

	
	// 글쓰기 페이지로 이동만 하는 메소드
	@RequestMapping(value = "/NewFile.do", method = RequestMethod.GET) //동일한 url이지만 다른 전송방식을 사용하면 다음과 같이
	public String boardInsert() {                                          // 같은 Mapping(명?url?)으로 전송방식에 따른이동이 가능하다
		return "NewFile";
		}
	
	
}



		
