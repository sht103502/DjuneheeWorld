package com.icia.DJ.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class AttractionDTO {
	private String anum;
	private String aname;
	private String ainformation;
	private String azone;
	private String aminheight;
	
	private MultipartFile afile; // 실제 db에는 없음
	private String afilename;
	private int alike;
	
	// rn에 대한 설정
	private int rn;
}
