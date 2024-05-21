package com.spring.dao;

import java.util.List;

import com.spring.dto.Member;

public interface MemberDAO {
	public List<Member> getMemberList();
	public Member getMember(String id);  // userid를 id로 변경
    int maxNum();
    void insMember(Member member);
    void changePw(String pw);
    void changeInfo(Member member);
    void delMember(String id);  // userid를 id로 변경
    
    String loginCheck(Member member);
    boolean idCheck(String id);  // userid를 id로 변경
}