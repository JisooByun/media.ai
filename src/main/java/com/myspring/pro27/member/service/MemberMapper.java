package com.myspring.pro27.member.service;

import com.myspring.pro27.member.vo.MemberVO;

public interface MemberMapper {
	MemberVO selectById(String id);
}
