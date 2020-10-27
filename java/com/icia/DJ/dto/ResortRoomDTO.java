package com.icia.DJ.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ResortRoomDTO {
	private String rnumber;
	private String rtype;
	private String rprice;
	private String rheadline;
	private String rinformation;
	private String rview;
	private String rbed;
	private String rwidth;
	private String ramount;
	private String rfacility;
	
	private MultipartFile rfile1;
	private String rfilename1;
	private MultipartFile rfile2;
	private String rfilename2;
	private MultipartFile rfile3;
	private String rfilename3;
	
}
