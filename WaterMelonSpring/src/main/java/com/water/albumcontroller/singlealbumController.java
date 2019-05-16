package com.water.albumcontroller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.album.dao.albumDAO;
import com.album.dao.albumDTO;

@Controller
public class singlealbumController {
	private Logger log=Logger.getLogger(this.getClass());//this.getClass()->현재클래스명
	
	
@Autowired
private albumDAO albumdao;

@RequestMapping("/single-album.water")
public ModelAndView process
	(@RequestParam(value="albumID") int albumID) {
	if(log.isDebugEnabled()) { //로그객체가 디버깅모드상태인지 아닌지를 체크
        System.out.println("여기는 보드 notice.water");
        log.debug("albumID:"+albumID); //log.debug메서드 사용 
}
	List <albumDTO> article = albumdao.albumList(albumID);
	albumDTO album=albumdao.printSingleAlbum(albumID); 
	
	
	ModelAndView mav=new ModelAndView("demo-03-html/single-album");
	mav.addObject("album", album);
	mav.addObject("article", article);
	
	return mav;
	
}
}
