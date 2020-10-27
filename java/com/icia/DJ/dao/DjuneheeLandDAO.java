package com.icia.DJ.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.DJ.dto.AttractionDTO;
import com.icia.DJ.dto.EntertainmentDTO;


@Repository
public class DjuneheeLandDAO {

	@Autowired
	private SqlSessionTemplate sql;
///////////////////////////////////////////////////////////////////////////////////	
	//엔터테이먼트
	public List<EntertainmentDTO> entertainmentList() {
		return sql.selectList("Djuneheeland.entertainmentList");
	}

	//엔터테이먼트 타입
	public List<EntertainmentDTO> EntertainmentType(String etype) {
		if(etype.equals("ALL")){
			return sql.selectList("Djuneheeland.entertainmentType1", etype);
		} else if(etype.equals("P")) {
			return sql.selectList("Djuneheeland.entertainmentType2", etype);
		} else if(etype.equals("A")){
			return sql.selectList("Djuneheeland.entertainmentType3", etype);
		} else if(etype.equals("S")){
			return sql.selectList("Djuneheeland.entertainmentType4", etype); 
		} else {
			return sql.selectList("Djuneheeland.entertainmentList");
		}
	}


	// 어트랙션 목록
	public List<AttractionDTO> attractionList() {
		System.out.println("dao-------------------------------------- " );
		return sql.selectList("Djuneheeland.attractionList");
	}

	// 어트랙션 목록
	public List<AttractionDTO> attractionSearchHT(int aheight) {
		System.out.println("dao-------------------------------------- " + aheight );
		return sql.selectList("Djuneheeland.attractionSearchHT",aheight);
	}

	// 어트랙션 검색
	public List<AttractionDTO> searchAttraction(String attractionName) {
		return sql.selectList("Djuneheeland.searchAttraction", attractionName);
	}

	//랜드 티켓업데이트
	public int ticketUpdate(String today, String name7, String loginId) {
		
		System.out.println("dao 결제된 값 넘어갔나?" + today + name7 + loginId);
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("today", today);
		map.put("name7", name7);
		map.put("loginId", loginId);
		return sql.update("Djuneheeland.ticketUpdate", map);
	}
	// top3 어트랙션 리스트
		public List<AttractionDTO> top3Attraction() {
			return sql.selectList("Djuneheeland.top3Attraction");

		}
	// 어트랙션 좋아요 숫자 1씩 증가
		public int upAlike(String aname) {
			System.out.println("dao aname : " + aname);
			return sql.update("Djuneheeland.upAlike", aname);
		}
}
