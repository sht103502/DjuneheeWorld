package com.icia.DJ.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.DJ.dao.DjuneheeLandDAO;
import com.icia.DJ.dto.AttractionDTO;
import com.icia.DJ.dto.EntertainmentDTO;



@Service
public class DjuneheeLandService {
	
ModelAndView mav = new ModelAndView();
	
	@Autowired
	private DjuneheeLandDAO dldao;

///////////////////////////////////////////////////////////////////////////////////	
	//엔터테이먼트
	public ModelAndView entertainmentList() {
		List<EntertainmentDTO> entertainmentList = dldao.entertainmentList();
		
		mav.addObject("entertainment", entertainmentList);
		mav.setViewName("Entertainment");
		
		System.out.println("값 받아와졌나?" + entertainmentList);
		
		return mav;
	}

	//엔터테이먼트 타입
	public ModelAndView EntertainmentType(String etype) {
		List<EntertainmentDTO> EntertainmentTypeList = dldao.EntertainmentType(etype);
		System.out.println("엔터테이먼트 타입 값?" + etype);
		
		mav.addObject("entertainment", EntertainmentTypeList);
		mav.setViewName("Entertainment");
		System.out.println("엔터테이먼트 타입 값 최종 가져왔나?" + EntertainmentTypeList);
		return mav;
	}
	
	//어트랙션 목록
	public ModelAndView attractionList() {
		System.out.println("serv-------------------------------------- " );
		List<AttractionDTO> attractionList = dldao.attractionList();
		
		System.out.println("디에오에서 attractionList service로 오닝" + attractionList);
		
		mav.addObject("attraction", attractionList);
		mav.setViewName("Attraction");
		System.out.println("attractionList service로 오닝2222" + attractionList);
		return mav;
	}

	//어트랙션 키에따른 값 서치
	public ModelAndView attractionSearchHT(int aheight) {
		List<AttractionDTO> searchAttractionList = dldao.attractionSearchHT(aheight);
		
		System.out.println("디에오에서 searchAttractionList service로 오닝" + searchAttractionList);
		
		mav.addObject("attraction", searchAttractionList);
		mav.setViewName("Attraction");
		System.out.println("searchAttractionList service로 오닝2222" + searchAttractionList);
		return mav;
	}

	//어트랙션 검색
	public ModelAndView searchAttraction(String attractionName) {
		List<AttractionDTO> searchList = dldao.searchAttraction(attractionName);
		
		mav.addObject("attraction", searchList);
		mav.setViewName("Attraction");
		
		return mav;
	}

	//랜드 티켓업데이트
	public ModelAndView ticketUpdate(String today, String name7, String loginId) {
		System.out.println("service 결제된 값 넘어갔나?" + today + name7 + loginId);
		// 업데이트 성공
		int ticketUpdate = dldao.ticketUpdate(today, name7, loginId);

		
		
		mav.addObject("ticketUpdate", ticketUpdate);
		mav.setViewName("redirect:/mypage");
		
		return mav;
	}

	//랜드 메인페이지로 이동
		public ModelAndView djuneheeLandMain() {
			// top3 어트랙션 리스트
			List<AttractionDTO> top3Attraction = dldao.top3Attraction();
			System.out.println();
			System.out.println("==================================");
			System.out.println("top3Attraction : " + top3Attraction);
			System.out.println("==================================");
			System.out.println();
			mav.addObject("top3Attraction", top3Attraction);
			// 디준희랜드로 이동
			mav.setViewName("DjuneheeLandMain");
			return mav;

		}
		
		// 어트랙션 좋아요 숫자 1씩 증가
		public ModelAndView upAlike(String aname) {
			System.out.println("svc aname : " + aname);
			int upAttractionLike = dldao.upAlike(aname);
			if(upAttractionLike > 0){
				System.out.println("성공 : " + upAttractionLike);
				mav.addObject("result", upAttractionLike);
				mav.setViewName("Attraction");
				} else {
				mav.setViewName("Attraction");
				System.out.println("실패 : " + upAttractionLike);
			}
			return mav;
		}



}
