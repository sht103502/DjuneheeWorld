package com.icia.DJ.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.icia.DJ.dto.MemberDTO;
import com.icia.DJ.service.MemberService;

@Controller
public class MemberController {

	ModelAndView mav = new ModelAndView();

	@Autowired
	MemberService membersvc;

	@Autowired
	HttpSession session;

	// 첫 실행화면
	@RequestMapping(value = "/")
	public String index() {
		return "Index2";
	}

	@RequestMapping(value = "index")
	public String indexs() {
		return "Index2";
	}

	// 회원가입폼 페이지로 이동
	// complete
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "Join";
	}

	// 로그인 화면으로 이동
	// complete
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "Login";
	}

	// 회원가입처리
	// complete
	@RequestMapping(value = "/memberJoin", method = RequestMethod.POST)
	public ModelAndView memberJoin(@ModelAttribute MemberDTO member) {
		mav = membersvc.memberJoin(member);
		return mav;
	}

	// 아이디 중복확인
	// complete
	@RequestMapping(value = "/idoverlap")
	public @ResponseBody String idOverlap(@RequestParam("mid") String mid) {
		String resultMsg = membersvc.idOverlap(mid);
		return resultMsg;
	}

	/*
	 * // 로그인시 아이디 비교
	 * 
	 * @RequestMapping(value = "/submitLogin") public @ResponseBody String
	 * submitLogin(@RequestParam("mid") String mid, @RequestParam("mpassword")
	 * String mpassword) { String resultMsg = membersvc.submitLogin(mid, mpassword);
	 * return resultMsg; }
	 */

	// 로그인 처리
	@RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
	public ModelAndView memberLogin(@ModelAttribute MemberDTO member) {
		mav = membersvc.memberLogin(member);
		return mav;
	}

	// 로그아웃 처리
	// complete
	@RequestMapping(value = "/logOut")
	public String memberLogOut() {
		session.invalidate();
		return "Index2";
	}

	// 비밀번호찾기 페이지 이동
	@RequestMapping(value = "/findPasswordForm", method = RequestMethod.GET)
	public String findPasswordForm() {
		return "FindPW";
	}

	// 비밀 번호 찾기 처리
	@RequestMapping(value = "/findPw", method = RequestMethod.POST)
	public ModelAndView findPw(@ModelAttribute MemberDTO member) {
		// @RequestParam : memberID로 받은 값을 String id에 넣어준다
		mav = membersvc.memberFindPw(member);
		return mav; // jsp로 이동
	}

	// 마이페이지로
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public ModelAndView memberView(@RequestParam("memberId") String mid) {
		// @RequestParam : memberID로 받은 값을 String id에 넣어준다
		mav = membersvc.memberView(mid);
		return mav;
	}

	// 일단 테스트 index페이지에서 이동하는것
	// 디준희랜드로 이동
	@RequestMapping(value = "/djuneheeLand", method = RequestMethod.GET)
	public String djuneheeLand() {
		return "Header";
	}

	// 디준희 리조트로 이동
	@RequestMapping(value = "/djuneheeResort", method = RequestMethod.GET)
	public String djuneheeResort() {
		return "Header";
	}

	// 회원 탈퇴
	@RequestMapping(value = "/memberOut")
	public ModelAndView memberOut(@RequestParam("mid") String mid) {
		mav = membersvc.memberOut(mid);
		return mav;
	}

	// 회원정보 수정하기 전 정보 불러오기
	@RequestMapping(value = "/memberModify")
	public ModelAndView memberModify(@RequestParam("mid") String mid) {
		mav = membersvc.memberModify(mid);
		return mav;
	}

	// 회원정보 수정
	@RequestMapping(value = "/memberProcess")
	public ModelAndView MemberProcess(@ModelAttribute MemberDTO member) {
		mav = membersvc.MemberProcess(member);
		return mav;
	}

}
