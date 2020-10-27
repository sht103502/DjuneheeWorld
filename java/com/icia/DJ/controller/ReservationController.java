package com.icia.DJ.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.DJ.dto.MemberDTO;
import com.icia.DJ.dto.ReservationDTO;
import com.icia.DJ.service.ReservationService;

@Controller
public class ReservationController {

	@Autowired
	HttpSession session;
	ModelAndView mav = new ModelAndView();
	@Autowired
	ReservationService rvsvc;
	


	  
	//예약 버트 누르면 예약 페이지로 
		@RequestMapping(value = "/reservation") 
		public String reservation() { 
			return "Reservation"; 
			}
	//예약 페이지에서 예약 하기 
		@RequestMapping(value = "/reservation1", method=RequestMethod.GET)
		public ModelAndView reservationInsert(@ModelAttribute ReservationDTO reservation) {
			
			mav= rvsvc.reservationInsert(reservation);
			return mav;
		}
		
	//예약 성공시 
		@RequestMapping(value="/reservationUpdate",method=RequestMethod.GET)
		public ModelAndView reservationUpdate(@RequestParam("rvphone") String rvphone) {
			mav = rvsvc.reservationUpdate(rvphone);
			return mav;
		}
		
	//예약  결제후 나타내기
		
		 @RequestMapping(value = "/reservationSelect") 
		 public ModelAndView reservationSelect(@ModelAttribute ReservationDTO reservation) {
	     mav= rvsvc.reservationSelect(reservation);
		  
	     return mav; }
		
		 
}
