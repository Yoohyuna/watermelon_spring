package com.album.dao;

import java.util.*;
import com.album.dao.*;

public interface albumDAO {
	
	
	//�ٹ� ��ü ���
	public List<albumDTO> printAlbum(int albumID);	
	
	//�̱۾ٹ� ���
	public albumDTO printSingleAlbum(int albumID);
	
	//�ٹ� ����Ʈ
	public List<albumDTO> albumList(int albumID);
	
	//��Ʈ ���
	public List<albumDTO> printCharts(int albumID);
	
}
