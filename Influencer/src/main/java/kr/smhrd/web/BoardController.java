package kr.smhrd.web;
//by. 지민

import java.util.Date;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.smhrd.mapper.BoardMapper;
import kr.smhrd.model.BoardVO;
import kr.smhrd.service.FileService;

@Controller
public class BoardController {

	// DB 쿼리문을 수행 할 수 있는 인터페이스 생성
	@Autowired // DI기법 사용, 자동 연결
	private BoardMapper mapper;
	
	
	@RequestMapping("/goboard.do")
	public String goboard() {
		return "board";
	}
	
	@RequestMapping("/goboardinsert.do")
	public String goboardinsert(HttpSession session) {
		session.getAttribute("mvo");	
		return "boardinsert";
	}
	
	//@RequestMapping("/boardinsert.do")
	//public String boardinsert(Model model, BoardVO vo,HttpSession session, HttpServletRequest request,
	//		MultipartHttpServletRequest multipart) throws IllegalStateException, IOException {
		
	//	String path = request.getServletContext().getRealPath("resources/images");
	//	System.out.println("경로 : " + path);

	//	Map map = service.upload(multipart, path);
	//	System.out.println(map);
	//	session.setAttribute("map", map);
	//	session.getAttribute("mvo");
	//	int cnt = mapper.boardinsert(vo);
	//	return "board";
	//}
	
	
//	@RequestMapping("/boardinsert.do")
//	public String boardinsert(@RequestParam("board_upload_file") Model model, BoardVO vo,HttpSession session,
//			MultipartFile multipartFile, HttpServletRequest request){ 
//		String uploadFilePath = request.getServletContext().getRealPath("resources/images");
//		String prefix = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf(".")+1, multipartFile.getOriginalFilename().length());
//		
//		String filename = UUID.randomUUID().toString() + "." + prefix;
//		
//		String pathname = uploadFilePath + filename;
//		File dest = new File(pathname);
//		try {
//			multipartFile.transferTo(dest);
//		} catch (IllegalStateException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		session.getAttribute("mvo");
//		int cnt = mapper.boardinsert(vo);
//		return "board";
//	}
	

	
	@RequestMapping("/boardinsert.do")
	public String boardinsert(BoardVO vo, HttpSession session) {
		session.getAttribute("mvo");
		int cnt = mapper.boardinsert(vo);
		return "board";
	}
	
	@RequestMapping(value="/board_upload_file.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<BoardVO> board_upload_file(MultipartFile board_upload_file) { //이때 MultipartFile의 객체명은 formData에 append해준 키값과 동일하게 맞춰야한다
//		System.out.println(board_upload_file.getOriginalFilename()); 값이 잘 전달되나 확인
//		System.out.println(board_upload_file.getContentType());
//		System.out.println(board_upload_file.getSize());
		
		// 업로드 파일이 이미지 파일인지 체크
		File checkfile = new File(board_upload_file.getOriginalFilename());
		String type = null;
		
		try {// Files 클래스의 probeContentType() 메서드를 통해  Mime Type을 반환해준다
			type = Files.probeContentType(checkfile.toPath());
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		
		// 이미지 타입은 Mime Type으로 반환시 시작문자가 image/gif,png....등등이다
		if(!type.startsWith("image")) {
			
			BoardVO vo = null;
			// 상태 코드가 400인 ResponseEntity 객체를 인스턴스화 하여 이를 반환
			return new ResponseEntity<>(vo, HttpStatus.BAD_REQUEST);
		}
		
		// c:upload 안에 날짜별 폴더를 생성해서 저장
		String uploadFolder = "C:\\upload";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
		Date date = new Date();
		
		String str = sdf.format(date);  //날짜 변수 date를  yyyy-mm-dd형식의 string으로 형변환
		String datePath = str.replace("-", "/"); //File.separator: 실행중인 OS에 해당하는 구분자를 리턴
		
		// 폴더 생성   File(디렉토리,경로)
		File uploadPath = new File(uploadFolder, datePath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs(); // mkdir : 만들고자 하는 디렉토리 상위 디렉토리가 없으면 생성 불가
		}
		
		// 파일이름
		String uploadFileName = board_upload_file.getOriginalFilename();
		// 파일명에 UUID 고유 식별자 추가
		String uuid = UUID.randomUUID().toString();
		uploadFileName = uuid + "_" + uploadFileName;
		System.out.println(uploadPath);
		// 파일 위치, 파일 이름을 합친 File 객체 생성
		File saveFile = new File(uploadPath, uploadFileName);
		//파일 저장
		try {
			board_upload_file.transferTo(saveFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		BoardVO vo = new BoardVO();
		vo.setBoard_fileName(uploadFileName);
		vo.setBoard_uploadPath(datePath);
		
		ResponseEntity<BoardVO> result = new ResponseEntity<BoardVO>(vo, HttpStatus.OK);
		return result;
		}
	
	@RequestMapping("img_display")
	public ResponseEntity<byte[]> getImage(String fileName){
		// 특수문자\를 인식할 수 있도록 이스케이프 문자 사용(\\)
		File file = new File("C:\\upload\\" + fileName.replace("\\", "/"));
		//file = file.replace(/\/g,"/");
		ResponseEntity<byte[]> result = null;
		
		
		try {
		// ResponseEntity에 Response의 header와 관련된 설정의 객체를 추가해주기
		// 위해서 HttpHeaders를 인스턴스화 한 후 참조 변수를 선언하여 대입
			HttpHeaders header = new HttpHeaders();
			// header의 'Content Type'에 대상 파일의 MIME TYPE을 부여
			header.add("Content-type", Files.probeContentType(file.toPath()));
			// FileCopyUtils: 파일과 stream 복사에 사용할 수 있는 메서드를 제공하는 클래스
			// copyToByteArray(): 파라미터로 부여하는 File 객체(대상 파일)를 복사하여 Byte 배열로 반환해주는 클래스
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	} 
	
	@RequestMapping("/boardView.do")
	public String boardView(int board_no, Model model, HttpSession session) {
		List<BoardVO> list = mapper.boardView(board_no);
		model.addAttribute("list",list);
		session.getAttribute("mvo");
		return "boardview";
	}
	
	@RequestMapping("/returnBoard.do")
	public String returnBoard() {
		return "board";
	}
	
	@RequestMapping("/goboardUpdate.do")
	public String goboardUpdate(int board_no, Model model) {
		BoardVO vo = mapper.goboardUpdate(board_no);
		model.addAttribute("vo",vo);
		return "boardupdate";
	}
	
	@RequestMapping("/boardUpdate.do")
	public String boardUpdate (BoardVO vo, Model model) {
		mapper.boardUpdate(vo);
			return "forward:/boardView.do";
		}
		
	@RequestMapping("/boardDelete.do")
	public String boardDelete(int board_no) {
		mapper.boardDelete(board_no);
		return "redirect:/goboard.do";
	}
	
	@RequestMapping("/boardList.do")
	@ResponseBody
	public List<BoardVO> boardList() {
		List<BoardVO> list = mapper.boardList();
		return list;
	}
	
}
