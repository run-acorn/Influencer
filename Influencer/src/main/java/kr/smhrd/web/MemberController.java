package kr.smhrd.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.mapper.MemberMapper;
import kr.smhrd.model.BoardVO;
import kr.smhrd.model.Criteria;
import kr.smhrd.model.MemberVO;
import kr.smhrd.model.PageMakeDTO;
import kr.smhrd.service.BoardService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private BoardService service;
	
	// 로그인 페이지 이동
	@RequestMapping("/goLogin.do")
	public String goLogin() {
		return "login";
	}
	
	// 회원가입 페이지 이동
	@RequestMapping("/goJoin.do")
	public String goJoin() {
		return "join";
	}
	
	// 회원가입
	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO vo) {
		
		mapper.memberInsert(vo);
		
		return "redirect:/goLogin.do";
		
	}
	
	// 회원가입 중복확인
	@RequestMapping("/memberInsertCheck.do")
	@ResponseBody
	public String memberInsertCheck(MemberVO vo) {
		
		MemberVO mvo = mapper.memberInsertCheck(vo);
		
		String result = "false";
		
		if(mvo != null) {
			result = "true";
		}
		
		return result;
		
	}

	// 로그인
	@RequestMapping("/login.do")
	public String login(MemberVO vo, HttpSession session) {
		
		MemberVO mvo = mapper.memberLogin(vo);
		
		session.setAttribute("mvo", mvo);
		
		return "redirect:/";
	}
	
	// 로그인 비밀번호 일치 여부 확인
	@RequestMapping("/loginCheck.do")
	@ResponseBody
	public String loginCheck(MemberVO vo) {

		MemberVO mvo = mapper.memberLogin(vo);
		String result = "false";
		
		if(mvo != null) {
			result = "true";
		}
		return result;
	}
	
	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		
		session.invalidate(); // 무효화
		
		return "redirect:/";
	}
	
	// 내정보 페이지 이동
	@RequestMapping("/goMyPage.do")
	public String goMypage() {
		return "myPage";
	}
	
	// 비밀번호 변경페이지 이동
	@RequestMapping("/goChangePw.do")
	public String goChangePw() {
		return "changePw";
	}
	
	// 비밀번호 변경
	@RequestMapping("/changePw.do")
	public String changePw(MemberVO vo, HttpSession session) {
		
		
		mapper.changePw(vo);
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 닉네임 변경페이지 이동
	@RequestMapping("/goChangeNick.do")
	public String goChangeNick() {
		return "changeNick";
	}
	
	// 닉네임 변경
	@RequestMapping("/changeNick.do")
	public String changeNick(MemberVO vo, HttpSession session) {
		
		
		mapper.changeNick(vo);
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 회원탈퇴 페이지 이동
	@RequestMapping("/goDeleteMember.do")
	public String goDeleteMember() {
		return "deleteMember";
	}
	
	// 회원탈퇴
	@RequestMapping("/deleteMember.do")
	public String deleteMember(MemberVO vo, HttpSession session) {
		
		
		mapper.deleteMember(vo);
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 내가 쓴글 페이지 이동
	@RequestMapping("/goMyWrite.do")
	public String goMyWrite() {
		return "myWrite";
	}
	
	// 내가 쓴글 페이징
	@RequestMapping("/myWrite.do")
	@ResponseBody
	public Map myWriteList(HttpSession session, Criteria cri) {
		
		Map map = new HashMap();
		
		MemberVO vo = (MemberVO)session.getAttribute("mvo");
		
		vo.setPageNum(cri.getPageNum());
		
		List<BoardVO> list = service.myWriteList(vo);
		
		int total = service.getMyTotal(vo.getNick());
		
		PageMakeDTO pageMake = new PageMakeDTO(cri, total);
		
		map.put("list", list);
		map.put("pageMake", pageMake);
		
		return map;
	}
	
	// 아이디 중복체크
	@RequestMapping("/idCheck.do")
	@ResponseBody
	public int idCheck(MemberVO vo) {
		
		int result = mapper.idCheck(vo);
		
		return result;
	}
	
	
	// 닉네임 중복체크
	@RequestMapping("/nickCheck.do")
	@ResponseBody
	public int nickCheck(MemberVO vo) {
		
		int result = mapper.nickCheck(vo);
		
		return result;
	}
}
