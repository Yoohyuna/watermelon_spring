package com.album.dao;

import java.util.*;
import com.album.dao.*;

public interface albumDAO {
	
	
	//앨범 전체 출력
	public List<albumDTO> printAlbum(int albumID);	
	
	//싱글앨범 출력
	public albumDTO printSingleAlbum(int albumID);
	
	//앨범 리스트
	public List<albumDTO> albumList(int albumID);
	
	//차트 출력
	public List<albumDTO> printCharts(int albumID);
	
}
