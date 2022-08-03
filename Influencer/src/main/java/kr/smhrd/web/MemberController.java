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
	
	@RequestMapping("/goLogin.do")
	public String goLogin() {
		return "login";
	}
	
	@RequestMapping("/goJoin.do")
	public String goJoin() {
		return "join";
	}
	
	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO mvo, Model model) {
		
		mapper.memberInsert(mvo);
		
		
		return "redirect:/goLogin.do";
	}
	
	@RequestMapping("/login.do")
	public String memberLogin(MemberVO mvo, HttpSession session) {
		
		mapper.memberLogin(mvo);
		
		session.setAttribute("mvo", mvo);
		
		return "redirect:/";
	}
	
}
