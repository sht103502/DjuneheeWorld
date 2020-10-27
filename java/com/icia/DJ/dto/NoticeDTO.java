package com.icia.DJ.dto;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class NoticeDTO {
	private int nnum;
	private String nwriter;
	private String npw;
	private String ntitle;
	private String ncontents;
	private Date ndate;
	private int nhit;
	
	private MultipartFile nfile;
	private String nfilename;
}
