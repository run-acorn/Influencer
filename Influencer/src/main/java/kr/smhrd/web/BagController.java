package kr.smhrd.web;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import com.sun.xml.internal.ws.wsdl.writer.document.Service;

import kr.smhrd.mapper.BagMapper;
import kr.smhrd.model.BagVO;
import kr.smhrd.model.BoardVO;
import kr.smhrd.model.Criteria;
import kr.smhrd.model.New_BagVO;
import kr.smhrd.model.PageMakeDTO;
import kr.smhrd.model.Used_BagVO;
import kr.smhrd.service.FileService;

@Controller // FrontController임을 알려주는 annotation
public class BagController {

	// DB 쿼리문을 수행 할 수 있는 인터페이스 생성
	@Autowired // DI기법 사용, 자동 연결
	private BagMapper mapper;
	@Autowired

	// 글쓰기 페이지로 이동만 하는 메소드
	@RequestMapping("/") // 동일한 url이지만 다른 전송방식을 사용하면 다음과 같이
	public String goMain() { // 같은 Mapping(명?url?)으로 전송방식에 따른이동이 가능하다
		return "Main";
	}

	@RequestMapping("/bagSearch.do")
	public String bagSearch(String bag_brand, Model model) {
		List<BagVO> list = mapper.bagSearch(bag_brand);
		model.addAttribute("list", list);

		return "bag_list";
	}
	
	@RequestMapping("/bagsearch_detail.do")
	@ResponseBody
	public List<New_BagVO> new_bag(int bag_no) {
		List<New_BagVO> list = mapper.new_bag_detail(bag_no);
		return list;

	}
	
	@RequestMapping("/new_bag_detail.do")
	public String new_bag(Model model,int bag_no) {
		List<New_BagVO> list = mapper.new_bag_detail(bag_no);
		model.addAttribute("list", list);
		return "detail";

	}

	@RequestMapping("/used_bag_detail.do")
	public String used_bag(Model model) {
		List<Used_BagVO> list1 = mapper.used_bag_detail();
		model.addAttribute("list1", list1);
		return "detail";
	}

	@RequestMapping("/selectimage.do")
	public String selectimage(int bag_no, Model model) {
		model.addAttribute("bag_no", bag_no);
		return "detail";

	}
	
	
	@Autowired
	private FileService service;

	// 단순하게 uploadform.jsp를 실행시킬수 있는 메소드
	@RequestMapping("/form.do")
	public String formUpload() {
		return "uploadForm";
	}

	// blob to image형태로 변환을 도와주는 controller
	@RequestMapping("/getByteImage.do")
	public ResponseEntity<byte[]> getByteImage(int bag_no) {

		// url안에다가 blob를 자체를 넣어서 넘기는건 url 규칙에 위배
		// https://~~~~~?bt=[B@

		New_BagVO vo = mapper.selectimage(bag_no);
		final HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_PNG);
		return new ResponseEntity<byte[]>(vo.getNew_img(), headers, HttpStatus.OK);
	}
	
	@RequestMapping("/search_answer.do")
	@ResponseBody
	public String search_answer(String bag_name_new) {
		int bag_no = mapper.search_answer(bag_name_new);
		return bag_no+"";
	}

	// 파일 업로드하는 기능 수행 - Flask 서버로 보낼꺼라 필요 없음
//	@RequestMapping("/upload.do")
//	public String upload(MultipartHttpServletRequest multipart, HttpServletRequest request, Model model) {
//		// multipart : form태그에서 보내주는 데이터가 담겨져있는 것
//		// request : 저장할 경로를 현재 프로젝트 경로로 잡아주려고 받아오는 것
//
//		// 1. 저장 할 경로 지정
//		String path = request.getServletContext().getRealPath("resources/file");
//		System.out.println("경로 : " + path);
//
//		Map map = service.upload(multipart, path);
//		model.addAttribute("map", map);
//
//		return "Main";
//	}

}
