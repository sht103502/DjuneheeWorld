package com.icia.DJ.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.DJ.dto.AttractionDTO;
import com.icia.DJ.dto.EventDTO;
import com.icia.DJ.dto.FaqDTO;
import com.icia.DJ.dto.GoodsShopDTO;
import com.icia.DJ.dto.MemberDTO;
import com.icia.DJ.dto.NoticeDTO;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSessionTemplate sql;

	// 굿즈샵 페이지(목록 전체)
	public List<GoodsShopDTO> goodsShopList() {
		return sql.selectList("Admin.goodsShopList");
	}

	/////////////////////////////////////////////////////////////////////////////////
	// 굿즈샵 상품목록(판매중)
	public List<GoodsShopDTO> onsaleGoodsShopList() {
		return sql.selectList("Admin.onsaleGoodsShopList");
	}

//////////////////////////////////////////////////////////////////////////////////			
	// 굿즈샵 상품목록(판매중)
	public List<GoodsShopDTO> soldoutGoodsShopList() {
		return sql.selectList("Admin.soldoutGoodsShopList");
	}

	//////////////////////////////////////////////////////////////////////////////////
	// 굿즈샵 상품목록 카운트(전체)
	public int allGoodsCount() {
		return sql.selectOne("Admin.allGoodsCount");
	}

	/////////////////////////////////////////////////////////////////////////////////
	// 굿즈샵 상품목록 카운트(판매중)
	public int onsaleGoodsCount() {
		return sql.selectOne("Admin.onsaleGoodsCount");
	}

//////////////////////////////////////////////////////////////////////////////////			
	// 굿즈샵 상품목록 카운트(품절)
	public int soldoutGoodsCount() {
		return sql.selectOne("Admin.soldoutGoodsCount");
	}

////////////////////////////////////////////////////////////////////////////////////
	// 전체 회원 리스트 출력
	public List<MemberDTO> memberList() {
		return sql.selectList("Admin.memberList");
	}

/////////////////////////////////////////////////////////////////////////////////////
	// 관리자 회원 관리 페이지에서 특정 회원 검색
	public List<MemberDTO> searchMemberInAdmin(String keyword) {

		System.out.println();
		System.out.println("==========================================");
		System.out.println("DAO에서 keyword의 값은? => " + keyword);
		System.out.println("==========================================");
		System.out.println();

		return sql.selectList("Admin.searchMemberInAdmin", keyword);
	}

/////////////////////////////////////////////////////////////////////////////////////
	// 관리자 굿즈샵 상품 관리 페이지에서 특정 상품 검색
	public List<MemberDTO> searchGoodsInAdmin(String keyword) {
		System.out.println();
		System.out.println("==========================================");
		System.out.println("DAO에서 keyword의 값은? => " + keyword);
		System.out.println("==========================================");
		System.out.println();

		return sql.selectList("Admin.searchGoodsInAdmin", keyword);
	}

//////////////////////////////////////////////////////////////////////////////////////
	// 굿즈샵 상품 부분삭제
	public int deleteGoodsByOne(String gname) {
		return sql.delete("Admin.deleteGoodsByOne", gname);
	}

	// 굿즈샵 상품 등록
	public int postGoods(GoodsShopDTO goodsShop) {
		return sql.insert("Admin.postGoods", goodsShop);

	}

	// 어트랙션 리스트 불러오기
	public List<AttractionDTO> adminAttractionList() {
		return sql.selectList("Admin.attractionList");
	}

	///////////////////////////////////////////////////////////////////////////////////
	// 어트랙션 등록
	public int attractionAdd(AttractionDTO attraction) {
		System.out.println("디에오 attraction : " + attraction);
		return sql.insert("Admin.attractionAdd", attraction);
	}

	////////////////////////////////////////////////////////////////////////////////
	// 어트랙션 삭제
	public int attractionDelete(String anum) {
		System.out.println("디에오 anum : " + anum);
		return sql.delete("Admin.attractionDelete", anum);
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////
	// 이벤트리스트
	public List<EventDTO> adminEventList() {
		return sql.selectList("Admin.eventList");
	}

	/////////////////////////////////////////////////////////////////////////////////////////
	// 이벤트등록
	public int eventAdd(EventDTO event) {
		return sql.insert("Admin.eventAdd", event);
	}

	///////////////////////////////////////////////////////////////////////////////////
	// 이벤트 삭제
	public int eventDelete(int evnumber) {
		return sql.delete("Admin.eventDelete", evnumber);
	}
	
	// notice 작성
	public int noticeWriteFile(NoticeDTO notice) {
		return sql.insert("Admin.noticeWrite", notice);
	}

	// 관리자페이지 회원 삭제
	public int adminDeleteMember(String mid) {
		System.out.println();
		System.out.println("==========================================");
		System.out.println("DAO에서 mid의 값은? => " + mid);
		System.out.println("==========================================");
		System.out.println();
		return sql.delete("Admin.adminDeleteMember", mid);
	}

	// faq리스트 불러오기
	public List<FaqDTO> faqList() {
		return sql.selectList("Admin.faqList");
	}

	// faq등록
	public int faqWrite(FaqDTO faq) {
		return sql.insert("Admin.faqWrite", faq);
	}

	// faq삭제
	public int faqDelete(int fnumber) {
		return sql.delete("Admin.faqDelete", fnumber);
	}

}
