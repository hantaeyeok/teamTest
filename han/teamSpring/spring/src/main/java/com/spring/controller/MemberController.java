package com.spring.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.Member;
import com.spring.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {

	@Autowired
    private MemberService memberService;

    @Autowired
    private HttpSession session;

    @GetMapping("login.do")
    public String login(Model model) {
        return "member/login";
    }

    @PostMapping("loginPro.do")
    public String loginPro(@RequestParam("id") String id, @RequestParam("pw") String pw, Model model, RedirectAttributes rttr, HttpServletRequest request) {
        Member member = memberService.getMember(id);

        if (member == null) {
            rttr.addFlashAttribute("msg", "존재하지 않는 아이디입니다.");
            System.out.println("회원 정보를 찾을 수 없습니다.");
            return "redirect:login.do";
        }

        // 로그인 시도 로그 추가
        System.out.println("로그인 시도 - 입력된 비밀번호: " + pw);
        System.out.println("로그인 시도 - 데이터베이스의 암호화된 비밀번호: " + member.getPw());

        boolean loginSuccess = memberService.checkPassword(pw, member.getPw());
        System.out.println("비밀번호 비교 결과: " + loginSuccess);

        if (loginSuccess) {
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
            }
            session = request.getSession(true);
            session.setAttribute("member", member);
            session.setAttribute("sid", id);
            model.addAttribute("msg", "로그인 성공");
            return "redirect:/";
        } else {
            rttr.addFlashAttribute("msg", "로그인 실패: 비밀번호가 일치하지 않습니다.");
            return "redirect:login.do";
        }
    }

    @GetMapping("join.do")
    public String join(@ModelAttribute("member") Member member, Model model) {
        model.addAttribute("Member", member);
        return "member/join";
    }

    @PostMapping("joinPro.do")
    public String joinPro(HttpServletRequest request, Model model, RedirectAttributes rttr) {
        Member member = new Member();
        member.setId(request.getParameter("id"));

        String rawPassword = request.getParameter("pw");
        member.setPw(rawPassword);

        member.setName(request.getParameter("name"));

        String birth = request.getParameter("year") + "-" + request.getParameter("month") + "-" + request.getParameter("day");
        member.setBirth(birth);
        member.setGender(request.getParameter("gender"));
        member.setPostcode(request.getParameter("postcode"));
        member.setAddr(request.getParameter("addr"));

        memberService.insMember(member);

        rttr.addFlashAttribute("msg", "회원가입이 완료되었습니다. 다시 로그인 해주세요.");
        return "redirect:/member/login.do";
    }

    @RequestMapping("agree.do")
    public String agreeForm(Model model, RedirectAttributes rttr) {
        rttr.addAttribute("msg", "회원 약관에 동의하시기 바랍니다.");
        return "member/agree";
    }

    @PostMapping("idCheck.do")
    public void idCheck(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
        String id = request.getParameter("id");
        Member member = memberService.getMember(id);
        boolean result = (member == null);
        JSONObject json = new JSONObject();
        json.put("result", result);
        PrintWriter out = response.getWriter();
        out.println(json.toString());
    }

    @RequestMapping("logout.do")
    public String logout(HttpSession session, Model model) {
        session.invalidate();
        model.addAttribute("message", "로그아웃 되었습니다.");
        return "redirect:/member/login.do";
    }

    @GetMapping("myInfo.do")
    public String myInfo(Model model) {
        Member member = (Member) session.getAttribute("member");
        model.addAttribute("member", member);
        return "member/myInfo";
    }

    @GetMapping("myUpdate.do")
    public String myUpdate(Model model) {
        Member member = (Member) session.getAttribute("member");
        model.addAttribute("member", member);
        return "member/myUpdate";
    }

    @PostMapping("myUpdatePro.do")
    public String myUpdatePro(HttpServletRequest request, Model model, RedirectAttributes rttr) {
        Member member = new Member();
        member.setId(request.getParameter("id"));

        String rawPassword = request.getParameter("pw");
        member.setPw(rawPassword);

        member.setName(request.getParameter("name"));
        member.setBirth(request.getParameter("birth"));
        member.setGender(request.getParameter("gender"));
        member.setPostcode(request.getParameter("postcode"));
        member.setAddr(request.getParameter("addr1") + " " + request.getParameter("addr2"));
        memberService.upInfo(member);

        // 회원 정보 업데이트 로그 추가
        System.out.println("회원 정보 업데이트 - 저장된 회원 정보: " + member.toString());

        rttr.addFlashAttribute("msg", "회원 정보가 업데이트되었습니다. 다시 로그인 해주세요.");
        session.invalidate();
        return "redirect:/member/login.do";
    }

    @GetMapping("memberDelete.do")
    public String memberDelete(@RequestParam("id") String id, Model model) {
        memberService.delMember(id);
        session.invalidate();
        return "redirect:/";
    }
}
