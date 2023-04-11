package com.exciting.promotion.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exciting.dao.PromotionDAO;
import com.exciting.dto.OrderDTO;
import com.exciting.dto.PromotionDTO;



@Service
public class PromotionServiceImpl implements PromotionService{

	//  BookDao는 autowired 할수 있다. 
	//	왜냐하면 BookDao class에 @Repository를 설정해 두었기 때문이다.
	@Autowired
	PromotionDAO proDao;

	public PromotionServiceImpl() {
		System.out.println("@serviceImpl 스프링 자동생성");
	}

	
	@Override
	public List<PromotionDTO> selectPromotion(Map<String, Object> map) {
		return proDao.selectPromotion(map);
	}
	
	@Override
	public Map<String, Object> selectProprice(Map<String, Object> map) {
		return proDao.selectProprice(map);
	}
	
	@Override
	public Map<String, Object> selectOrder(Map<String, Object> map) {
		return proDao.selectOrder(map);
	}
	
	@Override
	public OrderDTO insertOrder(OrderDTO dto) {
		return proDao.insertOrder(dto);
	}
	
	@Override
	public int deleteorder_id(int order_id) {
		return proDao.deleteorder_id(order_id);
	}
	@Override
	public int delete(List<Map<String, String>> orderIist) {
		return proDao.delete(orderIist);
	}
	@Override
	public int deleteone(OrderDTO dto) {
		return proDao.deleteone(dto);
	}
	@Override
	public List<PromotionDTO> selectPromotionList() {
		return proDao.selectPromotionList();
	}

}	
