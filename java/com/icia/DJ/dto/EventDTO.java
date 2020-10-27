package com.icia.DJ.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class EventDTO {
	private int evnumber;
	private String evtitle;
	
	private MultipartFile evfile;
	private String evfilename;
	
	private MultipartFile evbannerfile;
	private String evbannerfilename;
}
