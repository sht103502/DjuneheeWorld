package com.icia.DJ.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class GoodsShopDTO {

	private String gcode;
	private String gcategory;
	private String ginformation;
	private String gname;
	private int gprice;
	private int gstock;
	
	private MultipartFile gfile;
	private String gfilename1;
}
