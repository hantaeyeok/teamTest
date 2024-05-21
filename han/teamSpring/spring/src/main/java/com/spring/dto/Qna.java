package com.spring.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Qna {
	private int no;
	private int plevel;
	private int parno;
	private String title;
	private String content;
	private Timestamp resdate; // 변경된 부분
	private int visited;
	private String aid;
}
