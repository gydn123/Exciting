package com.exciting.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exciting.dto.OrderDTO;
import com.exciting.dto.PromotionDTO;

@Repository
public class PromotionDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public PromotionDAO() {
		System.out.println("@Repository 스프링 자동생성");
	}
	
	public List<PromotionDTO> selectPromotion(Map<String, Object>map) {
		System.out.println("proslect gogo");
		return sqlSessionTemplate.selectList("promotion.select_promotion", map);
	}
	
	public Map<String, Object> selectProprice(Map<String, Object> map){
		return sqlSessionTemplate.selectOne("promotion.select_proprice", map);
	}
	
	public Map<String, Object> selectOrder(Map<String, Object> map){
		return sqlSessionTemplate.selectOne("promotion.select_orders", map);
	}
	
	public OrderDTO insertOrder(OrderDTO dto) {
		sqlSessionTemplate.insert("promotion.insert_order", dto);
		OrderDTO order = sqlSessionTemplate.selectOne("promotion.select_order_id", dto);
	    return order; 
	}
	public int deleteorder_id(int order_id) {
		return sqlSessionTemplate.delete("promotion.deleteorder_id", order_id);
	}
	public int delete(List<Map<String, String>> orderIist) {
		return sqlSessionTemplate.delete("promotion.delete_orders", orderIist);
	}
	public int deleteone(OrderDTO dto) {
		return sqlSessionTemplate.delete("promotion.delete_one", dto);
	}
	public List<PromotionDTO> selectPromotionList(){
		return sqlSessionTemplate.selectList("promotion.select_promotion");
	}

}
