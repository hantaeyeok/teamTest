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
    private BCryptPasswordEncoder passwordEncoder;

    @Override
    public List<Member> getMemberList() {
        return memberDAO.getMemberList();
    }

    @Override
    public Member getMember(String id) {
        return memberDAO.getMember(id);
    }

    @Override
    public void insMember(Member member) {
        // 비밀번호 해싱
        String hashedPassword = passwordEncoder.encode(member.getPw());
        member.setPw(hashedPassword);
        // 회원 정보 저장
        memberDAO.insMember(member);
    }

    @Override
    public void upPw(String id, String pw) {
        // 비밀번호 해싱
        String hashedPassword = passwordEncoder.encode(pw);
        memberDAO.upPw(id, hashedPassword);
    }

    @Override
    public void upInfo(Member member) {
        memberDAO.upInfo(member);
    }

    @Override
    public void delMember(String id) {
        memberDAO.delMember(id);
    }
    
    @Override
    public boolean checkPassword(String rawPassword, String encodedPassword) {
        return passwordEncoder.matches(rawPassword, encodedPassword);
    }
    

}