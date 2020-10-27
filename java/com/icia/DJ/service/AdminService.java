package com.icia.DJ.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.DJ.dao.AdminDAO;
import com.icia.DJ.dao.MoreDAO;
import com.icia.DJ.dto.AttractionDTO;
import com.icia.DJ.dto.EventDTO;
import com.icia.DJ.dto.FaqDTO;
import com.icia.DJ.dto.GoodsShopDTO;
import com.icia.DJ.dto.MemberDTO;
import com.icia.DJ.dto.NoticeDTO;
import com.icia.DJ.dto.PageDTO;

@Service
public class AdminService {

	private ModelAndView mav = new ModelAndView();

	@Autowired
	private AdminDAO addao;

	@Autowired
	private MoreDAO moredao;

	@Autowired
	HttpSession session;

	public ModelAndView adminPage() {

		mav.setViewName("AdminMainPage");

		return mav;
	}

	public ModelAndView adminManageGoodsShop() {
		// 굿즈샵 상품목록(전체)
		List<GoodsShopDTO> allAdminGoodsList = addao.goodsShopList();
		mav.addObject("allAdminGoodsList", allAdminGoodsList);

		// 굿즈샵 상품목록(전체 count)
		int allGoodsCount = addao.allGoodsCount();
		mav.addObject("allGoodsCount", allGoodsCount);

		// 굿즈샵 상품목록(판매중)
		List<GoodsShopDTO> onsaleAdminGoodsList = addao.onsaleGoodsShopList();
		mav.addObject("onsaleAdminGoodsList", onsaleAdminGoodsList);

		// 굿즈샵 상품목록(판매중 count)
		int onsaleGoodsCount = addao.onsaleGoodsCount();
		mav.addObject("onsaleGoodsCount", onsaleGoodsCount);

		// 굿즈샵 상품목록(품절)
		List<GoodsShopDTO> soldoutAdminGoodsList = addao.soldoutGoodsShopList();
		mav.addObject("soldoutAdminGoodsList", soldoutAdminGoodsList);

		// 굿즈샵 상품목록(품절 count)
		int soldoutGoodsCount = addao.soldoutGoodsCount();
		mav.addObject("soldoutGoodsCount", soldoutGoodsCount);

		mav.setViewName("AdminManageGoodsShop");

		return mav;
	}

	// 관리자 회원 정보 관리 페이지로 이동
	public ModelAndView adminManageMember() {
		// 전체 회원 리스트 출력
		List<MemberDTO> memberList = addao.memberList();
		mav.addObject("memberList", memberList);

		mav.setViewName("AdminManageMember");
		return mav;
	}

	// 관리자 회원 관리 페이지에서 특정 회원 검색
	public ModelAndView searchMemberInAdmin(String keyword) {
		List<MemberDTO> searchMemberList = addao.searchMemberInAdmin(keyword);

		System.out.println();
		System.out.println("==========================================");
		System.out.println("Service에서 keyword의 값은? => " + keyword);
		System.out.println("==========================================");
		System.out.println();

		mav.addObject("memberList", searchMemberList);
		mav.setViewName("AdminManageMember");
		return mav;
	}

	// 관리자 굿즈샵 상품 관리 페이지에서 특정 상품 검색
	public ModelAndView searchGoodsInAdmin(String keyword) {
		List<MemberDTO> searchGoodsList = addao.searchGoodsInAdmin(keyword);

		System.out.println();
		System.out.println("==========================================");
		System.out.println("Service에서 keyword의 값은? => " + keyword);
		System.out.println("==========================================");
		System.out.println();

		mav.addObject("allAdminGoodsList", searchGoodsList);
		mav.setViewName("AdminManageGoodsShop");
		return mav;
	}

	// 굿즈샵 상품 삭제(1개씩)
	public ModelAndView deleteGoodsByOne(String gname) {
		int delResult = addao.deleteGoodsByOne(gname);

		if (delResult > 0) {
			mav.setViewName("redirect:/adminManageGoodsShop");
		} else {
			mav.setViewName("AdminManageGoodsShop");
		}
		return mav;
	}

	// 굿즈샵 상품 등록
	public ModelAndView postGoods(GoodsShopDTO goodsShop) throws IllegalStateException, IOException {
		MultipartFile gFile = goodsShop.getGfile();
		String fileName = gFile.getOriginalFilename();

		String savePath = "D:/DEV/Spring/NewDjuneheeworld1015/src/main/webapp/resources/img/goodsShop/" + fileName;

		if (!gFile.isEmpty()) {
			gFile.transferTo(new File(savePath));
		}
		goodsShop.setGfilename1(fileName);

		int registerResult = addao.postGoods(goodsShop);

		if (registerResult > 0) {
			mav.setViewName("redirect:/adminManageGoodsShop");
		} else {
			mav.setViewName("AdminGoodsShopForm");
		}
		return mav;
	}

	// 공지사항 관리 페이지로 이동
	public ModelAndView adminManageNotice() {
		// 공지사항 리스트
		List<NoticeDTO> noticeList = moredao.boardList();
		mav.addObject("noticeList", noticeList);
		mav.setViewName("AdminManageNotice");
		return mav;
	}

	// notice 작성
	public ModelAndView noticeWriteFile(NoticeDTO notice) throws IllegalStateException, IOException {
		MultipartFile nFile = notice.getNfile();
		String fileName = nFile.getOriginalFilename();

		String savePath = "D:/DEV/Spring/NewDjuneheeworld1015/src/main/webapp/resources/img/notice/" + fileName;

		if (!nFile.isEmpty()) {
			nFile.transferTo(new File(savePath));
		}
		notice.setNfilename(fileName);

		int writeResult = addao.noticeWriteFile(notice);

		if (writeResult > 0) {
			mav.setViewName("redirect:/adminManageNotice");
		} else {
			mav.setViewName("BoardWrite");
		}
		return mav;
	}

	// 관리자 Notice 삭제
	public ModelAndView noticeDelete(int nnum, int page) {
		int delResult = moredao.boardDelete(nnum);
		if (delResult > 0) {
			mav.setViewName("redirect:/adminManageNotice");
		} else {
			mav.setViewName("index");
		}
		return mav;
	}

	// 관리자 어트랙션 리스트 불러오기
	public ModelAndView adminAttractionList() {
		List<AttractionDTO> attractionList = addao.adminAttractionList();
		mav.addObject("attractionList", attractionList);
		mav.setViewName("AdminManageLand");
		return mav;
	}

	// 관리자 어트랙션 등록
	public ModelAndView attractionAdd(AttractionDTO attraction) throws IllegalStateException, IOException {
		MultipartFile afile = attraction.getAfile();
		String afilename = afile.getOriginalFilename();
		System.out.println("-------------------------service----------------------------------------");
		System.out.println(afile);
		String savePath = "D:/DEV/Spring/NewDjuneheeworld1015/src/main/webapp/resources/img/attraction/" + afilename;
		System.out.println("서비스 attraction : " + attraction);
		if (!afile.isEmpty()) {
			afile.transferTo(new File(savePath));
		}
		attraction.setAfilename(afilename);
		int addResult = addao.attractionAdd(attraction);

		if (addResult > 0) {
			mav.setViewName("redirect:/adminAttractionList");
		} else {
			mav.setViewName("AdminMainPage");
		}

		return mav;
	}

	// 관리자 어트랙션 삭제
	public ModelAndView attractionDelete(String anum) {
		System.out.println("서비스 anum : " + anum);
		int delResult = addao.attractionDelete(anum);
		if (delResult > 0) {
			mav.setViewName("redirect:/adminAttractionList");
		} else {
			mav.setViewName("AdminMainPage");
		}
		return mav;
	}

	// 관리자 이벤트 리스트 불러오면서 페이지이동
	public ModelAndView adminEventList() {
		List<EventDTO> eventList = addao.adminEventList();
		mav.addObject("eventList", eventList);
		mav.setViewName("AdminManageEvent");
		return mav;
	}

	// 관리자 이벤트 등록
	public ModelAndView eventAdd(EventDTO event) throws IllegalStateException, IOException {

		// 이벤트 창 이미지 등록
		MultipartFile evfile = event.getEvfile();
		String evfilename = evfile.getOriginalFilename();
		String savePath = "D:/DEV/Spring/NewDjuneheeworld1015/src/main/webapp/resources/img/event/" + evfilename;
		if (!evfile.isEmpty()) {
			evfile.transferTo(new File(savePath));
		}
		event.setEvfilename(evfilename);

		// 이벤트 배너 이미지 등록
		MultipartFile evbannerfile = event.getEvbannerfile();
		String evbannerfilename = evbannerfile.getOriginalFilename();
		String savePathBanner = "D:/DEV/Spring/NewDjuneheeworld1015/src/main/webapp/resources/img/event/"
				+ evbannerfilename;
		if (!evbannerfile.isEmpty()) {
			evbannerfile.transferTo(new File(savePathBanner));
		}
		event.setEvbannerfilename(evbannerfilename);

		System.out.println("서비스 event : " + event);
		int addResult = addao.eventAdd(event);

		if (addResult > 0) {
			mav.setViewName("redirect:/adminEventList");
		} else {
			mav.setViewName("AdminMainPage");
		}
		return mav;
	}

	// 관리자 이벤트 삭제
	public ModelAndView eventDelete(int evnumber) {
		System.out.println("서비스 anum : " + evnumber);
		int delResult = addao.eventDelete(evnumber);
		if (delResult > 0) {
			mav.setViewName("redirect:/adminEventList");
		} else {
			mav.setViewName("AdminMainPage");
		}
		return mav;
	}

	// 관리자페이지 회원 삭제
	public ModelAndView adminDeleteMember(String mid) {
		int deleteMember = addao.adminDeleteMember(mid);

		System.out.println();
		System.out.println("==========================================");
		System.out.println("Svc에서 mid의 값은? => " + mid);
		System.out.println("==========================================");
		System.out.println();

		if (deleteMember > 0) {
			mav.setViewName("redirect:/adminManageMember");
		} else {
			mav.setViewName("AdminMainPage");
		}

		return mav;
	}

	// 관리자페이지로 faq리스트 불러오기
	public ModelAndView faqManage() {
		List<FaqDTO> faqList = addao.faqList();
		mav.addObject("faqList", faqList);
		mav.setViewName("AdminManageFAQ");
		return mav;
	}

	// faq등록하기
	public ModelAndView faqWrite(FaqDTO faq) {
		int result = addao.faqWrite(faq);
		if (result > 0) {
			mav.setViewName("redirect:/faqManage");
		} else {
			mav.setViewName("AdminManageFAQ");
		}
		return mav;
	}

	// faq삭제
	public ModelAndView faqDelete(int fnumber) {
		int result = addao.faqDelete(fnumber);
		if (result > 0) {
			mav.setViewName("redirect:/faqManage");
		} else {
			mav.setViewName("AdminManageFAQ");
		}
		return mav;
	}

}
