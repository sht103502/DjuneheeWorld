package com.icia.DJ.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.DJ.dto.ResortRoomDTO;

@Repository
public class DjuneheeResortDAO {
	@Autowired
	private SqlSessionTemplate sql;

	public ResortRoomDTO RoomDetail(String rnumber) {
		// TODO Auto-generated method stub
		return sql.selectOne("DjuneheeResort.roomView",rnumber);
	}

	//메인 리조트 랜덤 추출
	public List<ResortRoomDTO> roomRandom() {
		return sql.selectList("DjuneheeResort.roomRandom");
	}

}
