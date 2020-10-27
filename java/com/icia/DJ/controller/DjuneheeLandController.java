package com.icia.DJ.controller;

import java.io.IOException;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.DJ.service.DjuneheeLandService;


@Controller
public class DjuneheeLandController {

	ModelAndView mav = new ModelAndView();
	
	@Autowired
	private DjuneheeLandService dlsvc;
	
	@Autowired
	HttpSession session;

///////////////////////////////////////////////////////////////////////////////////		
	//랜드 메인페이지로 이동

			@RequestMapping(value = "/djuneheeLandMain", method = RequestMethod.GET)
			public ModelAndView djuneheeLandMain() {
				mav = dlsvc.djuneheeLandMain();
				return mav;

			}
		
		// 디준희랜드로 이용방법
		@RequestMapping(value = "/djuneheeLandUse", method = RequestMethod.GET )
		public String DjuneheeLandUse() {
			return "DjuneheeLandUse";
		}

		@RequestMapping(value = "/djuneheeLandUse2", method = RequestMethod.GET)
		public String DjuneheeLandUse2() {
			return "DjuneheeLandUse2";
		}

		@RequestMapping(value = "/djuneheeLandUse3", method = RequestMethod.GET)
		public String DjuneheeLandUse3() {
			return "DjuneheeLandUse3";
		}

		@RequestMapping(value = "/djuneheeLandUse4", method = RequestMethod.GET)
		public String DjuneheeLandUse4() {
			return "DjuneheeLandUse4";
		}

		@RequestMapping(value = "/djuneheeLandUse5", method = RequestMethod.GET)
		public String DjuneheeLandUse5() {
			return "DjuneheeLandUse5";
		}

		@RequestMapping(value = "/djuneheeLandUse6", method = RequestMethod.GET)
		public String DjuneheeLandUse6() {
			return "DjuneheeLandUse6";
		}
		
		//랜드 오시는길
		@RequestMapping(value = "/directions", method = RequestMethod.GET)
		public String DjuneheeLandDirections() {
			return "Directions";
		}		
		
		//엔터테이먼트
		@RequestMapping(value = "/entertainment", method = RequestMethod.GET)
		public ModelAndView Entertainment() {
			mav = dlsvc.entertainmentList();
			return mav;
		}
		
		// 엔터테이먼트 타입
		@RequestMapping(value = "/entertainmentType")
		public ModelAndView EntertainmentType(@RequestParam(value = "etype")String etype) throws IllegalStateException, IOException{
			System.out.println("엔터테이먼트 타입 값?" + etype);
			mav = dlsvc.EntertainmentType(etype);
			
			return mav;
		}
		//추천코스로이동
		@RequestMapping(value = "/recommendCourse", method = RequestMethod.GET)
		public String RecommendCourse() {
		return "RecommendCourse";
		}
	
		// 어트랙션 목록
		@RequestMapping(value = "/attraction", method = RequestMethod.GET)
		public ModelAndView Attraction() {
			mav = dlsvc.attractionList();
			return mav;
		}

		// 어트랙션 키에따른 값

		@RequestMapping(value = "/searchAttraction")
		public ModelAndView GoodsShopSearch(@RequestParam(value = "aheight") String aHeight) {
			System.out.println("controller aHeight은?" + aHeight);
			int aheight=Integer.parseInt(aHeight);
			mav = dlsvc.attractionSearchHT(aheight);
			return mav;
		}
		
		//어트랙션 검색
		@RequestMapping(value = "/attractionSearch")
		public ModelAndView searchAttraction(@RequestParam(value="attractionName") String attractionName) {
			mav = dlsvc.searchAttraction(attractionName);
			return mav;
		}
		
		//랜드이용권
		@RequestMapping(value = "/reservationLand", method = RequestMethod.GET)
		public String ReservationLand() {
			return "ReservationLand";
		}
		
		//랜드 티켓업데이트
		@RequestMapping(value = "/ticketUpdate")
		public ModelAndView ticketUpdate(@RequestParam(value = "today") String today, @RequestParam(value = "name7") String name7, @RequestParam(value = "loginId") String loginId) {
			System.out.println("today : " + today );
			System.out.println("name7 : " + name7 );
			System.out.println("loginId : " + loginId );
			mav = dlsvc.ticketUpdate(today, name7, loginId);
			return mav;
		}
		
		// 어트랙션별 alike 숫자 up
				@RequestMapping(value = "/upAlike")
				public @ResponseBody ModelAndView upAlike(@RequestParam(value="aname") String aname) {
					System.out.println("ctrl aname : " + aname);
					mav = dlsvc.upAlike(aname);
					return mav;

				}
	
		
}
