package com.icia.DJ.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class EntertainmentDTO {

	private String ecode;
	private String etype;
	private String ename;
	private String einformation;
	private String ezone;
	private String etime;
	
	private MultipartFile efile;
	private String efilename;
	
}
