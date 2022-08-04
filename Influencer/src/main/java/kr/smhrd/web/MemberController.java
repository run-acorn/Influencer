package kr.smhrd.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.mapper.MemberMapper;
import kr.smhrd.model.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberMapper mapper;
	
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
	public String memberInsert(MemberVO mvo) {
		
		mapper.memberInsert(mvo);
		
		
		return "redirect:/goLogin.do";
	}
	
	// 로그인
	@RequestMapping("/login.do")
	public String Login(MemberVO mvo, HttpSession session) {
		
		MemberVO vo = mapper.memberLogin(mvo);
		
		session.setAttribute("vo", vo);
		
		return "redirect:/";
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
	public String changePw(MemberVO mvo, HttpSession session) {
		
		System.out.println(mvo);
		
		mapper.changePw(mvo);
		
		session.invalidate();
		
		return "Main";
	}
	
	// 닉네임 변경페이지 이동
	@RequestMapping("/goChangeNick.do")
	public String goChangeNick() {
		return "changeNick";
	}
	
	// 닉네임 변경
	@RequestMapping("/changeNick.do")
	public String changeNick(MemberVO mvo, HttpSession session) {
		
		System.out.println(mvo);
		
		mapper.changeNick(mvo);
		
		session.invalidate();
		
		return "Main";
	}
	
	@RequestMapping("/goDeleteMember.do")
	public String goDeleteMember() {
		return "deleteMember";
	}
	
	@RequestMapping("/deleteMember.do")
	public String deleteMember(MemberVO mvo, HttpSession session) {
		
		System.out.println(mvo);
		
		mapper.deleteMember(mvo);
		
		session.invalidate();
		
		return "Main";
	}
}
