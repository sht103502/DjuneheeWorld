package com.icia.DJ.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.DJ.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sql;
	// sql문을 사용하기 위한 객체생성

	// 회원가입
	public int memberJoin(MemberDTO member) {
		return sql.insert("Member.memberJoin", member);
	}

	// 아이디 중복확인
	public String idOverlap(String mid) {
		return sql.selectOne("Member.idOverlap", mid);
	}

	// 로그인
	public String memberLogin(MemberDTO member) {
		return sql.selectOne("Member.memberLogin", member);
	}

	// 아이디 찾기
	public String memberFindId(MemberDTO member) {
		// TODO Auto-generated method stub
		return sql.selectOne("Member.memberFindId", member);
	}

	// 비밀번호 찾기
	public MemberDTO memberFindView(MemberDTO member) {
		return sql.selectOne("Member.memberFindPw", member);
	}

	// 마이페이지
	public MemberDTO memberView(String mid) {
		return sql.selectOne("Member.memberView", mid);
	}

	// 회원탈퇴
	public int memberOut(String mid) {
		return sql.delete("Member.memberOut", mid);
	}

	// 회원 정보 수정
	public int MemberProcess(MemberDTO member) {
		return sql.update("Member.memberProcess", member);
	}

	/*
	 * // 로그인시 아이디 비교 public String submitLogin(String mid, String mpassword) {
	 * Map<String, String> map = new HashMap<String, String>(); map.put("mid", mid);
	 * map.put("mpassword", mpassword); return sql.selectOne("Member.submitLogin",
	 * map); }
	 */

}
