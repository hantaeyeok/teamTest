package com.spring.service;

import java.util.List;
import com.spring.dto.Member;

public interface MemberService {
	public List<Member> getMemberList();
    public Member getMember(String id); 
    int maxNum();
    void insMember(Member member);
    void changePw(String pw);
    void changeInfo(Member member);
    void delMember(String id);
    String loginCheck(Member member);
    boolean idCheck(String id); 
}