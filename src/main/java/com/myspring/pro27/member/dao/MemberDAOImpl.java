package com.myspring.pro27.member.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspring.pro27.member.service.MemberMapper;
import com.myspring.pro27.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Inject
	SqlSession sqlsession;
	
	@Override
	public boolean loginCheck(MemberVO vo) {
		MemberVO logincheck = sqlsession.selectOne("member.loginCheck",vo);
		if(logincheck ==null) {
			return false;
		}
		else {
			return true;
		}
	}

}
