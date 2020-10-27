package com.icia.DJ.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.DJ.dto.EventDTO;
import com.icia.DJ.dto.FaqDTO;
import com.icia.DJ.dto.NoticeDTO;
import com.icia.DJ.dto.PageDTO;

@Repository
public class MoreDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
	//faq리스트 불러오기
	public List<FaqDTO> faqList() {
		return sql.selectList("Board.faqList");
	}

	//faq등록
	public int faqWrite(FaqDTO faq) {
		return sql.insert("Board.faqWrite", faq);
	}
	//faq삭제
	public int faqDelete(int fnumber) {
		return sql.delete("Board.faqDelete",fnumber);
	}
	//수정할 faq 불러오기
	public FaqDTO faqModify(int fnumber) {
		return sql.selectOne("Board.faqModify",fnumber);
	}
	//faq수정
	public int faqProcess(FaqDTO faq) {
		return sql.update("Board.faqProcess",faq);
	}
	// 이벤트 불러오기
	public List<EventDTO> eventList() {
		return sql.selectList("Board.eventList");
	}
		
	//이벤트 상세 페이지로 이동 (2020/10/15)
	public EventDTO eventView(int evnumber) {
		return sql.selectOne("Board.eventView", evnumber);
	}

	// 이벤트 등록
	public int eventsWrite(EventDTO event) {
		return sql.insert("Board.eventsWrite", event);
	}

	// 이벤트 삭제
	public int eventDelete(int evnumber) {
		return sql.delete("Board.eventDelete", evnumber);
	}
	// notice 작성
		public int boardWriteFile(NoticeDTO notice) {
			return sql.insert("Board.boardWrite", notice);
		}

		// notice 목록
		public List<NoticeDTO> boardList() {
			return sql.selectList("Board.boardList");
		}

		// notice 글 갯수 조회
		public int listCount() {
			return sql.selectOne("Board.listCount");
		}

		// notice 페이징
		public List<NoticeDTO> paginglist(PageDTO paging) {
			return sql.selectList("Board.pagingList", paging);
		}

		// notice 상세상세
		public NoticeDTO boardView(int nnum) {
			return sql.selectOne("Board.boardView", nnum);
		}

		// notice 조회수
		public int boardhit(int nnum) {
			return sql.update("Board.boardhit", nnum);
		}

		// notice 삭제
		public int boardDelete(int nnum) {
			return sql.delete("Board.boardDelete", nnum);
		}
		
		// notice 수정
		public int modifyProcess(NoticeDTO notice) {
			return sql.update("Board.modifyProcess", notice);
		}

		// notice 검색
		public List<NoticeDTO> boardSearch(String type, String keyword) {

			Map<String, String> map = new HashMap<String, String>();
			map.put("type", type);
			map.put("keyword", keyword);
			return sql.selectList("Board.search", map);

		}


}
