package com.myspring.pro27;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myspring.pro27.member.dao.MemberDAO;
import com.myspring.pro27.member.service.MemberService;
import com.myspring.pro27.member.session.MemberSession;
import com.myspring.pro27.member.vo.MemberVO;

@Controller
public class HomeController {
	@Inject
	private MemberDAO memberDAO;
	
	@Inject
	MemberService memberService;
	
	@GetMapping("/login.do")
	public String login(HttpSession session , MemberVO vo) {
		if(session.getAttribute("memberSession") ==null) {
		return "member/loginForm";
		}
		else {
			return "home";
		}
	}
	
	@PostMapping("/logincheck.do")
	public String login(MemberVO vo, HttpSession session) {
		boolean result = memberService.loginCheck(vo, session);
		if(result) {
			return "home";
		}
		return "member/loginForm";
		
		
	}
	
}
