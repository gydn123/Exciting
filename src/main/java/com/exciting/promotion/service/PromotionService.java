package com.exciting.promotion.service;


import java.util.List;
import java.util.Map;

import com.exciting.dto.OrderDTO;
import com.exciting.dto.PromotionDTO;

public interface PromotionService {
	
	public List<PromotionDTO> selectPromotionList();
	public List<PromotionDTO> selectPromotion(Map<String, Object> map);
	public Map<String, Object> selectProprice(Map<String, Object> map);
	public Map<String, Object> selectOrder(Map<String, Object> map);
	public OrderDTO insertOrder(OrderDTO dto);
	public int deleteorder_id(int order_id);
	public int delete(List<Map<String, String>> orderIist);
	public int deleteone(OrderDTO dto);

}
