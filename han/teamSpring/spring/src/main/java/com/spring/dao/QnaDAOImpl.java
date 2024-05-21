package com.spring.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.spring.dto.Qna;

@Repository 
public class QnaDAOImpl implements QnaDAO {

    @Autowired
    private SqlSession sqlSession;


	@Override
    public void insQna(Qna qna) {
        sqlSession.insert("insQna", qna);
    }

    @Override
    public List<Qna> qnaList() {
        return sqlSession.selectList("qna.qnaList");
    }

    @Override
    public Qna getQna(int no) {
        return sqlSession.selectOne("qna.getQna", no);
    }

    @Override
    public void upQna(Qna qna) {
        sqlSession.update("qna.upQna", qna);
    }

    @Override
    public void delQna(int no) {
        sqlSession.delete("qna.delQna", no);
    }
}