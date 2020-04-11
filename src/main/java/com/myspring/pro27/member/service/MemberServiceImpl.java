package com.myspring.pro27.member.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.pro27.member.dao.MemberDAO;
import com.myspring.pro27.member.session.MemberSession;
import com.myspring.pro27.member.vo.MemberVO;


@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	MemberDAO memberDAO;
	@Override
	public boolean loginCheck(MemberVO vo, HttpSession session) {
		boolean result = memberDAO.loginCheck(vo);
		if(result) {
			MemberSession memberSession = new MemberSession();
			memberSession.setId(vo.getId());
			memberSession.setPwd(vo.getPwd());
			session.setAttribute("memberSession", memberSession);
			System.out.println(session.getId());
		}
		return result;
	}
	
}
