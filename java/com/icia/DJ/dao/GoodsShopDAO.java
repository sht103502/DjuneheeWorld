package com.icia.DJ.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.DJ.dto.BasketDTO;
import com.icia.DJ.dto.GoodsShopDTO;

@Repository
public class GoodsShopDAO {

	@Autowired
	private SqlSessionTemplate sql;

///////////////////////////////////////////////////////////////////////////////////					
	// 굿즈샵 카테고리
	public List<GoodsShopDTO> GoodsShopSearch(String gcategory) {
		System.out.println("dao gcategory은?" + gcategory);
		if (gcategory.equals("C")) {
			return sql.selectList("goodsShop.search1", gcategory);
		} else if (gcategory.equals("D")) {
			return sql.selectList("goodsShop.search2", gcategory);
		} else if (gcategory.equals("S")) {
			return sql.selectList("goodsShop.search3", gcategory);
		} else if (gcategory.equals("A")) {
			return sql.selectList("goodsShop.search4", gcategory);
		} else {
			return sql.selectList("goodsShop.goodsShopList");
		}
	}
///////////////////////////////////////////////////////////////////////////////////					
	// 굿즈 상세보기
	public GoodsShopDTO goodsView(String gcode) {
		System.out.println("dao gcode은?" + gcode);
		return sql.selectOne("goodsShop.goodsView", gcode);
	}
///////////////////////////////////////////////////////////////////////////////////
	// 장바구니에 원하는 상품 담기
	public int putinBasket(BasketDTO basket) {
		return sql.insert("goodsShop.putinBasket", basket);
	}
//////////////////////////////////////////////////////////////////////////////////
	// 굿즈샵 상품 등록
	public int registerGoods(GoodsShopDTO goodsShop) {
		return sql.insert("World.registerGoods", goodsShop);
	}
//////////////////////////////////////////////////////////////////////////////////
	// 굿즈샵 페이지(목록 전체)
		public List<GoodsShopDTO> goodsShopList() {
			return sql.selectList("goodsShop.goodsShopList");
		}
/////////////////////////////////////////////////////////////////////////////////
		// 굿즈샵 상품목록(판매중)
		public List<GoodsShopDTO> onsaleGoodsShopList() {
			return sql.selectList("goodsShop.onsaleGoodsShopList");
		}
//////////////////////////////////////////////////////////////////////////////////		
		// 굿즈샵 상품목록(판매중)
		public List<GoodsShopDTO> soldoutGoodsShopList() {
			return sql.selectList("goodsShop.soldoutGoodsShopList");
		}
//////////////////////////////////////////////////////////////////////////////////
		// 굿즈샵 상품목록 카운트(전체)
		public int allGoodsCount() {
			return sql.selectOne("goodsShop.allGoodsCount");
		}
/////////////////////////////////////////////////////////////////////////////////	
		// 굿즈샵 상품목록 카운트(판매중)
		public int onsaleGoodsCount() {
			return sql.selectOne("goodsShop.onsaleGoodsCount");
		}
//////////////////////////////////////////////////////////////////////////////////		
		// 굿즈샵 상품목록 카운트(품절)
		public int soldoutGoodsCount() {
			return sql.selectOne("goodsShop.soldoutGoodsCount");
		}
/////////////////////////////////////////////////////////////////////////////////
		// 굿즈샵 상품 부분삭제
		public int deleteGoods(String gname) {
			return sql.delete("goodsShop.deleteGoods", gname);
		}
/////////////////////////////////////////////////////////////////////////////////
		// 장바구니 페이지(목록)
		public List<BasketDTO> basketList(String loginID) {
			return sql.selectList("goodsShop.basketList", loginID);
		}
////////////////////////////////////////////////////////////////////////////////		
		//회원 장바구니 갯수
		public int basketCount(String loginID) {
			return sql.selectOne("goodsShop.basketCount", loginID);
		}
///////////////////////////////////////////////////////////////////////////////////	
		//장바구니 삭제
		public int basketDelete(int bnumber) {
			return sql.delete("goodsShop.basketDelete", bnumber);
		}	
///////////////////////////////////////////////////////////////////////////////////					
	//굿즈 검색
	public List<GoodsShopDTO> goodsSearch(String goodsName) {
		System.out.println("굿즈이름 dao 넘어오나?" + goodsName);
		return sql.selectList("goodsShop.goodsSearch", goodsName);
}
		
}// end
