package com.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;

import com.spring.dto.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {

	 @Autowired
	    private SqlSession sqlSession;

	    @Override
	    public List<Member> getMemberList() {
	        return sqlSession.selectList("member.getMemberList");
	    }

	    @Override
	    public Member getMember(String id) {
	        return sqlSession.selectOne("member.getMember", id);
	    }

	    @Override
	    public void insMember(Member member) {
	        sqlSession.insert("member.insMember", member);
	    }

	    @Override
	    public void delMember(String id) {
	        sqlSession.delete("member.delMember", id);
	    }

	    @Override
	    public void upPw(String id, String pw) {
	        // 비밀번호 업데이트를 위해 Member 객체 생성 및 설정
	        Member member = new Member();
	        member.setId(id);
	        member.setPw(pw);
	        sqlSession.update("member.upPw", member);
	    }

	    @Override
	    public void upInfo(Member member) {
	        sqlSession.update("member.upInfo", member);
	    }
    
}