package com.exciting.promotion.controller;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.exciting.dto.OrderDTO;
import com.exciting.dto.PromotionDTO;
import com.exciting.promotion.service.PromotionService;

@Controller
public class PromotionController {
	
	@Autowired
	PromotionService service;
	
//	@Autowired
//    private JdbcTemplate jdbcTemplate;

//	@PostMapping("/delete-data/{order_id}")
//	public String deleteDatapost(@PathVariable int order_id) {
//		System.out.println("============delete=========="+order_id+"============delete===========");
//		String sql = "DELETE FROM orders WHERE order_id = ?";
//		int deletedRows = jdbcTemplate.update(sql, order_id);
//		
//		if (deletedRows > 0) {
//			return "Data with ID " + order_id + " deleted successfully.";
//		} else {
//			return "No data found with ID " + order_id + ".";
//		}
//	}
//	@GetMapping("/deleteorder_id/{order_id}")
//	public String deleteData(@PathVariable int order_id) {
//		System.out.println("============delete=========="+order_id+"============delete===========");
//	  String sql = "DELETE FROM orders WHERE order_id = ?";
//	  int deletedRows = jdbcTemplate.update(sql, order_id);
//
//	  if (deletedRows > 0) {
//	    return "Data with ID " + order_id + " deleted successfully	.";
//	  } else {
//	    return "No data found with ID " + order_id + ".";
//	  }
//	}
	
	@RequestMapping(value = "/deleteorder_id", method = RequestMethod.GET)
	public ModelAndView deletepost(int order_id) {
		System.out.println("============delete=========="+order_id+"============delete===========");

		ModelAndView mav = new ModelAndView();
		int rs = service.deleteorder_id(order_id);
		System.out.println(rs);
		if(rs == 1) {
			mav.setViewName("redirect:index");
		}
		return mav;
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		
		return "index";
	}
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public String calendar(Locale locale, Model model) {
		
		return "Calendar";
	}
	@RequestMapping(value = "/orderlist", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> orderlist(@RequestParam Map<String, Object> map) {
		Map<String, Object> list = this.service.selectOrder(map);
		System.out.println("========list======="+list+"========list=======");
		
	         String date = list.get("m_regidate").toString();
	         String ymd=date.substring(0,8);
	         String ymd2=ymd.replaceAll("-",".");
	         String hms=date.substring(12);
	         String postdate=ymd2+" "+hms;
	         list.put("m_regidate", postdate);
	      
		return list;
	}
	@GetMapping(value = "/order")
	public ModelAndView order(@RequestParam Map<String, Object> map, OrderDTO dto) {
		
		OrderDTO orderid = this.service.insertOrder(dto);
		
		map.put("orderid", orderid.getOrder_id());
		System.out.println("========order======="+map+"========order=======");
		Map<String, Object> order = this.service.selectOrder(map);
		System.out.println("asdasdsad========"+order);
		ModelAndView mav = new ModelAndView();
		mav.addObject("data", order);
		mav.setViewName("/order");
		return mav;
	}
	@GetMapping(value = "/promotionprice")
	public ModelAndView promotionprice(@RequestParam Map<String, Object> map) {
		
		System.out.println("asdasdsad========"+map);
		Map<String, Object> proprice = this.service.selectProprice(map);
		System.out.println("asdasdsad========"+proprice);
		ModelAndView mav = new ModelAndView();
		mav.addObject("data", proprice);
		mav.setViewName("/promotionprice");
		return mav;
	}
	@GetMapping(value = "/promotion")
	public ModelAndView promotionList(@RequestParam Map<String, Object> map) {
		System.out.println("propropro!!!");		
		List<PromotionDTO> list = this.service.selectPromotion(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("data",list);
		mav.setViewName("/promotion");
		
		return mav;
	}
	
	@PostMapping(value = "/delete")
	public void deletepost(@RequestBody List<Map<String, String>> orderIist) {
		service.delete(orderIist);
	}
	
	@PostMapping(value = "/deleteone")
	public void deleteone(@RequestBody OrderDTO dto) {
		System.out.println("===========post===========");
		service.deleteone(dto);
	}
	@GetMapping(value = "/deleteone")
	public void deleteone1(@RequestBody OrderDTO dto) {
		System.out.println("===========get===========");
		service.deleteone(dto);
	}
	
}
