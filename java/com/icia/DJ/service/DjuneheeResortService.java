package com.icia.DJ.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.DJ.dao.DjuneheeResortDAO;
/*import com.icia.DJ.dto.AttractionDTO;*/
import com.icia.DJ.dto.ResortRoomDTO;

@Service
public class DjuneheeResortService {
	ModelAndView mav = new ModelAndView();

	@Autowired
	private DjuneheeResortDAO rsdao;
	
	@Autowired
	HttpSession session;
	public ModelAndView RoomDetail(String rnumber) {
	ResortRoomDTO rsRoomView = rsdao.RoomDetail(rnumber);
	session.setAttribute("roomView", rsRoomView);
		mav.setViewName("RoomDetail");

		return mav;
	}
	//리조트메인 이동 겸 랜덤으로3개 추출해서 넣기
	public ModelAndView roomRandom() {
		List<ResortRoomDTO> roomRandom=rsdao.roomRandom();
		mav.addObject("roomRandom", roomRandom);
		mav.setViewName("DjuneheeResortMain");
		return mav;
	}
}
