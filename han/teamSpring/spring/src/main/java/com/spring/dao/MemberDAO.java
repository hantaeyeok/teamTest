package com.spring.dao;

import java.util.List;

import com.spring.dto.Member;

public interface MemberDAO {
	public List<Member> getMemberList();
	public Member getMember(String id);
    void insMember(Member member);
    void upPw(String id,String pw);
    void upInfo(Member member);
    void delMember(String id);  
}