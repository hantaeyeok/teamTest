package com.spring.controller;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.dto.Qna;
import com.spring.service.QnaService;

@Controller
@RequestMapping("/qna/")
public class QnaController {

    @Autowired
    private QnaService qnaService;

    @GetMapping("qnaList.do")
    public String getQnaList(Model model) {
        List<Qna> qnaList = qnaService.qnaList();
        model.addAttribute("qnaList", qnaList);
        return "qna/qnaList";
    }

    @GetMapping("getQna.do")
    public String getQna(@RequestParam("no") int no, Model model) {
        Qna qna = qnaService.getQna(no);
        model.addAttribute("qna", qna);
        return "qna/getQna";
    }

    @GetMapping("insQuestion.do") //질문 등록
    public String insertQuestionForm(Model model) {
        model.addAttribute("qna", new Qna());
        return "qna/insQna";
    }

    @PostMapping("insQuestion.do")
    public String insertQuestion(Qna qna) {
        qna.setParno(0);  // 질문의 경우 parno는 0
        qna.setPlevel(1); // 질문의 경우 plevel은 1
        qnaService.insQna(qna);  // 변경된 메소드 이름
        return "redirect:qnaList.do";
    }

    @GetMapping("insQnaAnswer.do") //답변등록
    public String insertAnswerForm(@RequestParam("parno") int parno, Model model) {
        Qna qna = new Qna();
        qna.setParno(parno);
        qna.setPlevel(2); // 답변은 plevel 2로 설정
        model.addAttribute("qna", qna);
        return "qna/insQnaAnswer";
    }
    
    @PostMapping("insQnaAnswer.do")
    public String insertAnswer(Qna qna) {
        if (qna.getResdate() == null) {
            qna.setResdate(new Timestamp(System.currentTimeMillis())); // resdate 설정
        }
        qnaService.insQna(qna);
        return "redirect:qnaList.do";
    }

    @GetMapping("upQna.do")
    public String upQnaForm(@RequestParam("no") int no, Model model) {
        Qna qna = qnaService.getQna(no);
        model.addAttribute("qna", qna);
        return "qna/upQna";
    }

    @PostMapping("upQna.do")
    public String upQna(Qna qna) {
    	 if (qna.getResdate() == null) {
             qna.setResdate(new Timestamp(System.currentTimeMillis())); // resdate 설정
         }
        qnaService.upQna(qna);
        return "redirect:getQna.do?no=" + qna.getNo();
    }

    @GetMapping("delQna.do")
    public String delQna(@RequestParam("no") int no) {
        qnaService.delQna(no);
        return "redirect:qnaList.do";
    }
}