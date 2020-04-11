package com.myspring.pro27.member.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.dao.DataAccessException;

import com.myspring.pro27.member.vo.MemberVO;

public interface MemberService {
	public boolean loginCheck(MemberVO vo, HttpSession session);
}
