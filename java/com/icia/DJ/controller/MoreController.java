package com.icia.DJ.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.DJ.dto.EventDTO;
import com.icia.DJ.dto.FaqDTO;
import com.icia.DJ.dto.NoticeDTO;
import com.icia.DJ.service.MoreService;


@Controller
public class MoreController {
	
	ModelAndView mav = new ModelAndView();
	
	@Autowired
	HttpSession session;
	
	@Autowired
	MoreService moresvc;
	
	//오시는길 페이지로 이동_대중교통
	@RequestMapping(value = "/direction", method = RequestMethod.GET)
	public String Direction() {
		return "Direction";
	}
	
	//오시는길 페이지로 이동_자가용
		@RequestMapping(value = "/directionMycar", method = RequestMethod.GET)
		public String Direction2() {
			return "DirectionMyCar";
		}
		
	//오시는길 페이지로 이동_자가용
	@RequestMapping(value = "/directionMycar2", method = RequestMethod.GET)
	public String Direction3() {
		return "DirectionMyCar2";
	}	

	//FAQ페이지로 이동, db에 저장된 faq리스트 불러오기
	@RequestMapping(value = "/faq", method = RequestMethod.GET )
	public ModelAndView faqList() {
		mav=moresvc.faqList();
		return mav;
	}
	
	//이벤트 페이지로 이동, db에 저장된이벤트리스트 불러오기
	@RequestMapping(value = "/events", method = RequestMethod.GET )
	public ModelAndView eventList() {
		mav=moresvc.eventList();
		return mav;
	}

	//이벤트 상세 페이지로 이동 (2020/10/15)
	@RequestMapping(value = "/eventsView", method = RequestMethod.GET )
	public ModelAndView eventsView(@RequestParam("evnumber") int evnumber) {
		mav=moresvc.eventsView(evnumber);
		return mav;
	}

	//관리자페이지로 이벤트리스트 불러오기
	@RequestMapping(value = "/eventsManage", method = RequestMethod.GET )
	public ModelAndView eventsManage() {
		mav=moresvc.eventsManage();
		return mav;
	}

	// Notice 목록
	@RequestMapping(value="/boardList")
	public ModelAndView boardList(){
		mav=moresvc.boardList();
		return mav;
	}


	// Notice 페이징
		@RequestMapping(value="/pagingList")
		public ModelAndView pagingList(@RequestParam(value="page",required=false,defaultValue="1")int page) {
			if(page==0) {
				page=1;
			}
			mav=moresvc.pagingList(page);
			return mav;
		}


		// Notice 상세보기
		@RequestMapping(value="/boardView")
		public ModelAndView boardView(@RequestParam(value="nnum")int nnum,@RequestParam(value="page",required=false,defaultValue="1")int page){
			mav=moresvc.boardView(nnum,page);
			moresvc.boardhit(nnum);
			return mav;
		}
		
		//Notice 검색
		@RequestMapping(value="/boardSearch")
		public ModelAndView boardSearch(@RequestParam(value="type") String type,
				@RequestParam(value="keyword") String keyword){
			System.out.println("========== 게시글 검색 ==========");
			System.out.println("type : " + type + ", keyword : " + keyword);
				mav=moresvc.boardSearch(type, keyword);
			return mav;
		}

}
