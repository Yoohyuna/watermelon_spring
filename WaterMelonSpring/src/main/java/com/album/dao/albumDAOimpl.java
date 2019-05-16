package com.album.dao;

import java.util.List;

import com.album.dao.albumDTO;


import org.mybatis.spring.support.SqlSessionDaoSupport;

public class albumDAOimpl extends SqlSessionDaoSupport implements albumDAO {

	public List<albumDTO> printAlbum(int albumID) {
		List<albumDTO> printAlbum = getSqlSession().selectList("printAlbum",albumID);
		return printAlbum;
	}

	public albumDTO printSingleAlbum(int albumID) {
		return (albumDTO)getSqlSession().selectOne("printSingleAlbum",albumID);
	}

	public List<albumDTO> albumList(int albumID) {
		List<albumDTO> albumList = getSqlSession().selectList("albumList",albumID);
		return albumList;
	}

	public List<albumDTO> printCharts(int albumID) {
		List<albumDTO> printCharts = getSqlSession().selectList("printCharts",albumID);
		return printCharts;
	}

}
