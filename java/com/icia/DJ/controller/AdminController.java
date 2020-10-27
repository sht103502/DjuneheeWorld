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

import com.icia.DJ.dto.AttractionDTO;
import com.icia.DJ.dto.EventDTO;
import com.icia.DJ.dto.FaqDTO;
import com.icia.DJ.dto.GoodsShopDTO;
import com.icia.DJ.dto.NoticeDTO;
import com.icia.DJ.service.AdminService;

@Controller
public class AdminController {
	private ModelAndView mav = new ModelAndView();

	@Autowired
	private AdminService adsvc;

	@Autowired
	HttpSession session;

	// 관리자 페이지로 이동
	@RequestMapping(value = "/adminPage", method = RequestMethod.GET)
	public ModelAndView adminPage() {
		mav = adsvc.adminPage();
		return mav;
	}

	// 관리자 회원 정보 관리 페이지로 이동
	@RequestMapping(value = "/adminManageMember", method = RequestMethod.GET)
	public ModelAndView adminManageMember() {
		mav = adsvc.adminManageMember();
		return mav;
	}

	// 관리자페이지 회원 삭제
	@RequestMapping(value = "/adminDeleteMember", method = RequestMethod.GET)
	public ModelAndView adminDeleteMember(@RequestParam(value = "mid") String mid) {
		mav = adsvc.adminDeleteMember(mid);

		System.out.println();
		System.out.println("==========================================");
		System.out.println("Ctrl에서 mid의 값은? => " + mid);
		System.out.println("==========================================");
		System.out.println();

		return mav;
	}

	// 관리자 굿즈샵 상품 관리 페이지로 이동
	@RequestMapping(value = "/adminManageGoodsShop", method = RequestMethod.GET)
	public ModelAndView adminManageGoodsShop() {
		mav = adsvc.adminManageGoodsShop();
		return mav;
	}

	// 관리자 회원 관리 페이지에서 특정 회원 검색
	@RequestMapping(value = "/searchMemberInAdmin", method = RequestMethod.GET)
	public ModelAndView searchMemberInAdmin(@RequestParam(value = "keyword") String keyword) {
		System.out.println();
		System.out.println("==========================================");
		System.out.println("Controller에서 keyword의 값은? => " + keyword);
		System.out.println("==========================================");
		System.out.println();
		mav = adsvc.searchMemberInAdmin(keyword);
		return mav;
	}

	// 관리자 굿즈샵 상품 관리 페이지에서 특정 상품 검색
	@RequestMapping(value = "/searchGoodsInAdmin", method = RequestMethod.GET)
	public ModelAndView searchGoodsInAdmin(@RequestParam(value = "keyword") String keyword) {
		System.out.println();
		System.out.println("==========================================");
		System.out.println("Controller에서 keyword의 값은? => " + keyword);
		System.out.println("==========================================");
		System.out.println();
		mav = adsvc.searchGoodsInAdmin(keyword);
		return mav;
	}

	// 굿즈샵 상품 부분삭제(1개씩)
	@RequestMapping(value = "/deleteGoodsByOne")
	public ModelAndView deleteGoodsByOne(@RequestParam(value = "gname") String gname) {
		mav = adsvc.deleteGoodsByOne(gname);
		return mav;
	}

	// GoodsShopForm으로 이동
	@RequestMapping(value = "/goodsForm")
	public String goodsForm() {
		return "AdminGoodsShopForm";
	}

	// 굿즈샵 상품 등록
	@RequestMapping(value = "/postGoods")
	public ModelAndView postGoods(@ModelAttribute GoodsShopDTO goodsShop) throws IllegalStateException, IOException {
		mav = adsvc.postGoods(goodsShop);
		return mav;
	}

	// 공지사항 관리 페이지로 이동
	@RequestMapping(value = "/adminManageNotice")
	public ModelAndView adminManageNotice() {
		mav = adsvc.adminManageNotice();
		return mav;
	}

	// 관리자 Notice 삭제
	@RequestMapping(value = "/noticeDelete")
	public ModelAndView noticeDelete(@RequestParam(value = "nnum") int nnum,
			@RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		mav = adsvc.noticeDelete(nnum, page);
		return mav;
	}

	// Notice 게시판글쓰기
	@RequestMapping(value = "/noticeWriteFile", method = RequestMethod.POST)
	public ModelAndView noticeWriteFile(@ModelAttribute NoticeDTO notice) throws IllegalStateException, IOException {
		mav = adsvc.noticeWriteFile(notice);
		return mav;
	}

	// 관리자 어트랙션 리스트 불러오기
	@RequestMapping(value = "/adminAttractionList")
	public ModelAndView adminAttractionList() {
		mav = adsvc.adminAttractionList();
		return mav;
	}

	// 관리자 어트랙션 등록
	@RequestMapping("/attractionAdd")
	public ModelAndView attractionAdd(@ModelAttribute AttractionDTO attraction)
			throws IllegalStateException, IOException {
		System.out.println("컨트롤러 attraction : " + attraction);
		mav = adsvc.attractionAdd(attraction);
		return mav;
	}

	// 관리자 어트랙션 삭제
	@RequestMapping("/attractionDelete")
	public ModelAndView attractionDelete(@RequestParam("anum") String anum) {
		System.out.println("컨트롤러 anum : " + anum);
		mav = adsvc.attractionDelete(anum);
		return mav;
	}

	// 관리자 이벤트 리스트 불러오기
	@RequestMapping(value = "/adminEventList")
	public ModelAndView adminEventList() {
		mav = adsvc.adminEventList();
		return mav;
	}

	// 관리자 이벤트 등록
	@RequestMapping("/eventAdd")
	public ModelAndView eventAdd(@ModelAttribute EventDTO event) throws IllegalStateException, IOException {
		System.out.println("컨트롤러 attraction : " + event);
		mav = adsvc.eventAdd(event);
		return mav;
	}

	// 관리자 이벤트 삭제
	@RequestMapping("/eventDelete")
	public ModelAndView eventDelete(@RequestParam("evnumber") int evnumber) {
		System.out.println("컨트롤러 evnumber : " + evnumber);
		mav = adsvc.eventDelete(evnumber);
		return mav;
	}

	// 관리자페이지로 faq리스트 불러오기
	@RequestMapping(value = "/faqManage", method = RequestMethod.GET)
	public ModelAndView faqManage() {
		mav = adsvc.faqManage();
		return mav;
	}

	// faq등록
	@RequestMapping(value = "/faqWrite", method = RequestMethod.GET)
	public ModelAndView faqWrite(@ModelAttribute FaqDTO faq) {
		mav = adsvc.faqWrite(faq);
		return mav;
	}

	// faq삭제
	@RequestMapping(value = "/faqDelete", method = RequestMethod.GET)
	public ModelAndView faqDelete(@RequestParam("fnumber") int fnumber) {
		mav = adsvc.faqDelete(fnumber);
		return mav;
	}
}
