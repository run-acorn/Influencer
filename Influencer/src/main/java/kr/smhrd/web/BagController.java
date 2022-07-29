package kr.smhrd.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.smhrd.mapper.BagMapper;
import kr.smhrd.model.BagVO;
import kr.smhrd.model.New_BagVO;
import kr.smhrd.model.Used_BagVO;
import kr.smhrd.service.FileService;

@Controller    //FrontController임을 알려주는 annotation
public class BagController {
	
	//DB 쿼리문을 수행 할 수 있는 인터페이스 생성
	@Autowired   //DI기법 사용, 자동 연결
	private BagMapper mapper;
	

	
	// 글쓰기 페이지로 이동만 하는 메소드
	@RequestMapping("/Main.do") //동일한 url이지만 다른 전송방식을 사용하면 다음과 같이
	public String boardInsert() {                                          // 같은 Mapping(명?url?)으로 전송방식에 따른이동이 가능하다
		return "Main";
		}
	
	
	@RequestMapping("/bagSearch.do")
	public String bagSearch(String bag_brand, Model model) {
		List<BagVO> list = mapper.bagSearch(bag_brand);
		model.addAttribute("list",list);
		
		return "bag_list";
	}
	
	@RequestMapping("detail.do")
	public String detail() {
		return "detail";
	}
	
	@RequestMapping("/new_bag_detail.do")
	public String new_bag(Model model) {
		List<New_BagVO> list = mapper.new_bag_detail();
		model.addAttribute("list",list);
		return "detail";
		
	}
	
	@RequestMapping("/used_bag_detail.do")
	public String used_bag(Model model) {
		List<Used_BagVO> list1 = mapper.used_bag_detail();
		model.addAttribute("list1",list1);
		return "detail";
	}
	
	
	
	@Autowired
	private FileService service;
	
	// 단순하게 uploadform.jsp를 실행시킬수 있는 메소드
	@RequestMapping("/form.do")
	public String formUpload() {
		return "uploadForm";
	}


	
	
	//파일 업로드하는 기능 수행
	@RequestMapping("/upload.do")
	public String upload(MultipartHttpServletRequest multipart,HttpServletRequest request, Model model ) {
		// multipart : form태그에서 보내주는 데이터가 담겨져있는 것
		// request : 저장할 경로를 현재 프로젝트 경로로 잡아주려고 받아오는 것
		
		// 1. 저장 할 경로 지정
		String path = request.getServletContext().getRealPath("resources/file");
		System.out.println("경로 : "+ path);
		
		Map map = service.upload(multipart, path);
		model.addAttribute("map", map);
		
		return "Main";
	}

	
}



		
