package com.icia.DJ.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.DJ.service.DjuneheeResortService;


@Controller
public class ResortController {
	
	ModelAndView mav = new ModelAndView();
	
	@Autowired
	HttpSession session;
	@Autowired
	DjuneheeResortService rssvc;
	//카지노 이동
	@RequestMapping(value = "/casino", method = RequestMethod.GET)
	public String casino() {
		return "Casino";
	}
	//리조트 이용방법 이동
	@RequestMapping(value = "/djuneheeResortUse", method = RequestMethod.GET )
	public String DjuneheeResortUse() {
		return "DjuneheeResortUse";
	}
	// 리조트 메인페이지(수정)
	@RequestMapping(value = "/djuneheeResortMain", method = RequestMethod.GET)
	public ModelAndView DjuneheeResortMain() {
		mav=rssvc.roomRandom();
		return mav;
		}
	@RequestMapping(value = "/djuneheeResortUse5", method = RequestMethod.GET)
	public String DjuneheeResortUse5() {
		return "DjuneheeResortUse5";
	}
	@RequestMapping(value = "/djuneheeResortUse4", method = RequestMethod.GET)
	public String DjuneheeResortUse4() {
		return "DjuneheeResortUse4";
	}
	@RequestMapping(value = "/djuneheeResortUse3", method = RequestMethod.GET)
	public String DjuneheeResortUse3() {
		return "DjuneheeResortUse3";
	}
	@RequestMapping(value = "/djuneheeResortUse2", method = RequestMethod.GET)
	public String DjuneheeResortUse2() {
		return "DjuneheeResortUse2";
	}
	//리조트 룸 상세보기

	  @RequestMapping(value = "/roomDetail")

	  public ModelAndView RoomDetail(@RequestParam(value = "rnum", required=false, defaultValue="DR0001") String rnum){

		  mav = rssvc.RoomDetail(rnum);

		  return mav; 

	  }
	
}
