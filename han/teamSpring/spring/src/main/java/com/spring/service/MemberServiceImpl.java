package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.dao.MemberDAO;
import com.spring.dto.Member;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDAO memberDAO;

    @Autowired
    private BCryptPasswordEncoder pwBCPE;

    @Override
    public List<Member> getMemberList() {
        return memberDAO.getMemberList();
    }

    @Override
    public Member getMember(String id) {
        Member member = memberDAO.getMember(id);
        if (member != null) {
            System.out.println("데이터베이스에서 조회한 회원 정보: " + member);
        } else {
            System.out.println("회원 정보를 찾을 수 없습니다.");
        }
        return member;
    }

    @Override
    public int maxNum() {
        return memberDAO.maxNum();
    }

    @Override
    public void insMember(Member member) {
        String rawPassword = member.getPw();
        String encodedPassword = pwBCPE.encode(rawPassword);
        member.setPw(encodedPassword);
        System.out.println("비밀번호 암호화 - 원본: " + rawPassword + ", 암호화: " + encodedPassword);
        memberDAO.insMember(member);
    }

 
    @Override
	public void changePw(String pw) {
		memberDAO.changePw(pw);		
	}

    @Override
    public void changeInfo(Member member) {
        memberDAO.changeInfo(member);
    }

    @Override
    public void delMember(String id) {
        memberDAO.delMember(id);
    }

    @Override
    public String loginCheck(Member member) {
        return memberDAO.loginCheck(member);
    }


    @Override
    public boolean idCheck(String id) {
        return memberDAO.idCheck(id);
    }
    

}