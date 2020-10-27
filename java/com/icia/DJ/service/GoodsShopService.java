package com.icia.DJ.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.DJ.dao.GoodsShopDAO;
import com.icia.DJ.dao.MemberDAO;
import com.icia.DJ.dto.BasketDTO;
import com.icia.DJ.dto.GoodsShopDTO;

@Service
public class GoodsShopService {

	ModelAndView mav = new ModelAndView();

	@Autowired
	private GoodsShopDAO gsdao;
	@Autowired
	HttpSession session;

///////////////////////////////////////////////////////////////////////////////////					
	// 굿즈샵 카테고리
	public ModelAndView GoodsShopSearch(String gcategory) {
		System.out.println("service gcategory은?" + gcategory);
		List<GoodsShopDTO> searchList = gsdao.GoodsShopSearch(gcategory);

		System.out.println("카테고리 넘어오는가?" + searchList);

		mav.addObject("goodsShop", searchList);
		mav.setViewName("GoodsShop");

		return mav;
	}

///////////////////////////////////////////////////////////////////////////////////					
	// 굿즈 상세보기
	public ModelAndView goodsView(String gcode) {
		System.out.println("코드 넘어오는가?" + gcode);
		GoodsShopDTO goodsView = gsdao.goodsView(gcode);

		if (goodsView != null) {
			mav.addObject("goodsView", goodsView);
			mav.setViewName("GoodsShopView");
		} else {
			mav.setViewName("GoodsShop");
		}

		return mav;
	}
////////////////////////////////////////////////////////////////////////////////////	
	// 장바구니에 원하는 상품 담기
	public ModelAndView putinBasket(BasketDTO basket) {
		// 장바구니에 상품 담기
		int basketResult = gsdao.putinBasket(basket);

		if (basketResult > 0) { 
			mav.setViewName("GoodsShopView");
		} else { 
			mav.setViewName("GoodsShopView");
		}
		
		return mav;
	}
////////////////////////////////////////////////////////////////////////////////////
	// 굿즈샵 상품 등록
		public ModelAndView registerGoods(GoodsShopDTO goodsShop)throws IllegalStateException, IOException {
			
			MultipartFile gFile = goodsShop.getGfile();
			String fileName = gFile.getOriginalFilename();
			
			String savePath = "D:/DEV/Spring/Djuneheeworld1009/src/main/webapp/resources/fileUpload/" + fileName ;
			
			if(!gFile.isEmpty()) {
				gFile.transferTo(new File(savePath));
			}
			goodsShop.setGfilename1(fileName);
			
			int registerResult = gsdao.registerGoods(goodsShop);
			if(registerResult > 0) {
				mav.setViewName("GoodsShop");
			} else {
				mav.setViewName("GoodsShopForm");
			}
			return mav;
		}
//////////////////////////////////////////////////////////////////////////////////
		
		// 굿즈샵 페이지(목록 전체)
		public ModelAndView goodsShopList() {
			List<GoodsShopDTO> goodsShopList = gsdao.goodsShopList();

			mav.addObject("goodsShop", goodsShopList);
			mav.setViewName("GoodsShop");

			return mav;
		}
////////////////////////////////////////////////////////////////////////////////
		// 
		public ModelAndView adminPage() {
			// 굿즈샵 상품목록(전체)
			List<GoodsShopDTO> allAdminGoodsList = gsdao.goodsShopList();
			mav.addObject("allAdminGoodsList", allAdminGoodsList);

			// 굿즈샵 상품목록(전체 count)
			int allGoodsCount = gsdao.allGoodsCount();
			mav.addObject("allGoodsCount", allGoodsCount);

			/////////////////////////////////////////////////////////////////////////

			// 굿즈샵 상품목록(판매중)
			List<GoodsShopDTO> onsaleAdminGoodsList = gsdao.onsaleGoodsShopList();
			mav.addObject("onsaleAdminGoodsList", onsaleAdminGoodsList);

			// 굿즈샵 상품목록(판매중 count)
			int onsaleGoodsCount = gsdao.onsaleGoodsCount();
			mav.addObject("onsaleGoodsCount", onsaleGoodsCount);

			/////////////////////////////////////////////////////////////////////////

			// 굿즈샵 상품목록(품절)
			List<GoodsShopDTO> soldoutAdminGoodsList = gsdao.soldoutGoodsShopList();
			mav.addObject("soldoutAdminGoodsList", soldoutAdminGoodsList);

			// 굿즈샵 상품목록(품절 count)
			int soldoutGoodsCount = gsdao.soldoutGoodsCount();
			mav.addObject("soldoutGoodsCount", soldoutGoodsCount);

			//////////////////////////////////////////////////////////////////////////

			mav.setViewName("AdminPage");

			return mav;
		}

		///////////////////////////////////////////////////////////////////////

		// 굿즈샵 상품 삭제(1개씩)
		public ModelAndView deleteGoods(String gname) {
			int delResult = gsdao.deleteGoods(gname);

			if (delResult > 0) {
				mav.setViewName("AdminGoodsShop");
			} else {
				mav.setViewName("AdminGoodsShop");
			}
			return mav;
		}
	
		///////////////////////////////////////////////////////////////////////
		//장바구니 페이지 이동(로그인 아이디로 해당 회원 장바구니 값 가져오기)
		public ModelAndView basket(String loginID) {
			List<BasketDTO> basketList = gsdao.basketList(loginID);
			
			mav.addObject("basketList", basketList);
			System.out.println("값을 가지고 왔는가? : " + basketList);
			
			//해당 회원 장바구니에 담긴 컬럼 수
			int basketCount=gsdao.basketCount(loginID);
			mav.addObject("basketCount",basketCount);
			
			mav.setViewName("Basket");
			

			return mav;
		}
		//////////////////////////////////////////////////////////////////////////
		// 장바구니 갯수(ajax)
		public String basketCount(String loginID) {
			int basketCountCheck = gsdao.basketCount(loginID);
			mav.addObject("countBasket",basketCountCheck);
			
			String resultMsg =null;
			
			if(basketCountCheck == 0) {
				resultMsg="NO";
			}else {
				resultMsg="OK";
			}
			return resultMsg;
		}
///////////////////////////////////////////////////////////////////////////////////	
		//장바구니 삭제
		public ModelAndView basketDelete(int bnumber, String loginID) {
			System.out.println("basketDelete svc : " + bnumber);
			int result = gsdao.basketDelete(bnumber);
			
			
			
			System.out.println();
			System.out.println("=====================");
			System.out.println("loginID : " + loginID);
			System.out.println("=====================");
			System.out.println();
			
		if(result > 0) {
			session.setAttribute("loginID", loginID);
			mav.setViewName("redirect:/basket?loginID=" + loginID);
				
		} else {
			mav.setViewName("Basket");			
		}
			
		return mav;
		}
///////////////////////////////////////////////////////////////////////////////////	
	//굿즈 검색
	public ModelAndView goodsSearch(String goodsName) {
	System.out.println("굿즈이름 서비스 넘어오나?" + goodsName);
	List<GoodsShopDTO> searchList = gsdao.goodsSearch(goodsName);
	
	mav.addObject("goodsShop", searchList);
	mav.setViewName("GoodsShop");
	System.out.println("굿즈이름 최종 서비스 넘어오나???" + searchList);
	return mav;
}

		


}// end
