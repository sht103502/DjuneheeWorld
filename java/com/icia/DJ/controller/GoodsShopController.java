package com.icia.DJ.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.DJ.dto.BasketDTO;
import com.icia.DJ.dto.GoodsShopDTO;
import com.icia.DJ.service.GoodsShopService;

@Controller
public class GoodsShopController {


	ModelAndView mav = new ModelAndView();
	
	@Autowired
	private GoodsShopService gssvc;
	
	@Autowired
	HttpSession session;
///////////////////////////////////////////////////////////////////////////////////			
	//굿즈샵 목록
	@RequestMapping(value = "/goodsShop", method = RequestMethod.GET)
	public ModelAndView GoodsShop() {
		mav = gssvc.goodsShopList();
		return mav;
	}
///////////////////////////////////////////////////////////////////////////////////					
	//굿즈샵 카테고리 
	@RequestMapping(value = "/GoodsShopSearch")
	public ModelAndView GoodsShopSearch(@RequestParam(value = "gcategory") String gcategory){
		System.out.println("controller gcategory은?"+gcategory);
		mav = gssvc.GoodsShopSearch(gcategory);

		return mav;
	}
///////////////////////////////////////////////////////////////////////////////////					
	//굿즈샵 상세보기로 이동
	@RequestMapping(value="/goodsView", method= RequestMethod.GET)
	public ModelAndView goodsView(@RequestParam("gcode")String gcode) {
		System.out.println("controller gcode은?"+gcode);
		mav=gssvc.goodsView(gcode);
		return mav;
	}
///////////////////////////////////////////////////////////////////////////////////					
	//장바구니 페이지(목록)
	@RequestMapping(value = "/basket", method = RequestMethod.GET)
	public ModelAndView basket(@RequestParam(value="loginID")String loginID) {
		mav = gssvc.basket(loginID);
		
		return mav;
	}
///////////////////////////////////////////////////////////////////////////////////
		// 아이디 중복확인
		// complete
		@RequestMapping(value = "/basketCount")
		public @ResponseBody String basketCount(@RequestParam(value="loginID")String loginID) {
			String resultMsg = gssvc.basketCount(loginID);
			return resultMsg;

		}

///////////////////////////////////////////////////////////////////////////////////
	//장바구니에 원하는 상품 담기
	@RequestMapping(value="/putinBasket", method = RequestMethod.GET)
	public ModelAndView putinBasket(@ModelAttribute BasketDTO basket) {
		System.out.println("==============================");
		System.out.println("controller 장바구니 담겨나?" + basket);
		System.out.println("==============================");
		mav = gssvc.putinBasket(basket);
		return mav;
	}
////////////////////////////////////////////////////////////////////////////////////
	// 굿즈샵 상품 부분삭제(1개씩)
	@RequestMapping(value = "/deleteGoods")
	public ModelAndView deleteGoods(@RequestParam(value="gname") String gname) {
		mav = gssvc.deleteGoods(gname);
		return mav;
	}
///////////////////////////////////////////////////////////////////////////////////
	//GoodsShopForm으로 이동
	@RequestMapping(value="/goGoodsForm")
	public String goGoodsForm() {
		return "GoodsShopForm";
	}
//////////////////////////////////////////////////////////////////////////////////
	// 굿즈샵 상품 등록
	@RequestMapping(value="/registerGoods")
	public ModelAndView registerGoods(@ModelAttribute GoodsShopDTO goodsShop) throws IllegalStateException, IOException {
		mav = gssvc.registerGoods(goodsShop);
		return mav;
	}
///////////////////////////////////////////////////////////////////////////////////	
//장바구니 삭제
@RequestMapping(value ="/basketDelete") 
public ModelAndView basketDelete(@RequestParam("bnumber") int[] bnumber, @RequestParam(value="loginID") String loginID){		

for(int i=0;i<bnumber.length;i++) {
System.out.println("bnumber[i] : " + bnumber[i]);
mav = gssvc.basketDelete(bnumber[i], loginID);
}

return mav;
}
//////////////////////////////////////////////////////////////////////////////////	
		//굿즈 검색
		@RequestMapping(value = "/goodsSearch")
		public ModelAndView goodsSearch(@RequestParam(value="goodsName") String goodsName) {
			System.out.println("굿즈이름 컨트롤러 넘어오나?" + goodsName);
			mav=gssvc.goodsSearch(goodsName);
			return mav;
		}
		
}// end
