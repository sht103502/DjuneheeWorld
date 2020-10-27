package com.icia.DJ.dto;

import lombok.Data;

@Data
public class ReservationDTO {//예약정보테이블
private String rvnumber;
private String rvmid;
private String rvcheckin;
private String rvcheckout;
private String rvroomnumber;
private String rvpayment;
private String rvprice;
private String rvemail;
private String rvphone;
private String rvname;

}
