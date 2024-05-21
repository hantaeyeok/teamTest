package com.spring.dto;


import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Notice {
	private int bno;
	private String title;
	private String content;
	private String author;
	private int visited;
	private String resdate;
}
