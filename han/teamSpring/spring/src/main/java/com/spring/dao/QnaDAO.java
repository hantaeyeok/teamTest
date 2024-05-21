package com.spring.dao;

    import java.util.List;
    import com.spring.dto.Qna;

public interface QnaDAO {
	List<Qna> qnaList();
	void insQna(Qna qna);
	Qna getQna(int no);
	void upQna(Qna qna);
	void delQna(int no);
}
