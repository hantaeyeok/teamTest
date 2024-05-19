package com.spring.service;

import java.util.List;

import com.spring.dto.Member;

public interface MemberService {
	public List<Member> getMemberList();
	public Member getMember(String id);
	public int maxNum();
	public void insMember(Member member);
	public void changePw(String pw);
	public void changeInfo(Member member);
	public void delMember(String id);
}
