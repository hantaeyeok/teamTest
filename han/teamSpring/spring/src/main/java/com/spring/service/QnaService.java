package com.spring.service;

import java.util.List;

import com.spring.dto.Qna;

public interface QnaService {
	List<Qna> qnaList();
	void insQna(Qna qna);
	Qna getQna(int no);
	void upQna(Qna qna);
	void delQna(int no);
}