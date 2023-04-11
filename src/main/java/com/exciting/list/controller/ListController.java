package com.exciting.list.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.exciting.dto.AmusementAimageDTO;
import com.exciting.dto.PromotionDTO;
import com.exciting.index.service.AmusementService;

import utils.ListPage;

@Controller
public class ListController {

	@Autowired
	AmusementService amusementService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView index(@RequestParam Map<String, Object> map, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
//		세션에 있는 member_id 받아옴
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");

//		페이징
		String pageTemp = (String)map.get("pageNum");
		int pageNum = 1;
		if(pageTemp != null && !(pageTemp.equals(""))){
			pageNum = Integer.parseInt(pageTemp);
		}
		
		int pageSize = 12;
		int blockPage = 10;
		int totalCount = amusementService.selectTotalCount(map);
		int totalPage = (int)Math.ceil((double)totalCount/pageSize);
		int start = (pageNum - 1) * pageSize;
		int end = pageSize;
		
		map.put("start", start);
		map.put("end", end);
		List<AmusementAimageDTO> listData = amusementService.selectList(map);
		
		String searchName = (String)map.get("searchName");
		String searchCountry = (String)map.get("searchCountry");
		String order = (String)map.get("order");
//		검색값 오류나서 null대신 빈값 집어넣음
		if(searchName == null) {
			searchName = "";
		} 
		if(searchCountry == null) {
			searchCountry = "";
		}
		if(order == null) {
			order = "";
		}
		
		System.out.println("searchName : "+searchName);
		System.out.println("searchCountry : "+searchCountry);
		
		String listPage = ListPage.pagingStr(totalCount, pageSize, blockPage, pageNum, searchName, searchCountry, order, request.getRequestURI());
		System.out.println("listPage : "+listPage);
		mav.setViewName("list");
		mav.addObject("listData",listData);
		mav.addObject("listPage",listPage);
		mav.addObject("searchCountry", searchCountry);
		mav.addObject("order", order);
		if(!(member_id == null || member_id.equals(""))) {
			mav.addObject("member_id", member_id);
		}
		return mav;
		
	}
}
