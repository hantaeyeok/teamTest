package com.spring.service;

import java.util.List;
import com.spring.dto.Member;

public interface MemberService {
	public List<Member> getMemberList();
	public Member getMember(String id);
    void insMember(Member member);
    void upPw(String id,String pw);
    void upInfo(Member member);
    void delMember(String id);  
    public boolean checkPassword(String rawPassword, String encodedPassword);
}