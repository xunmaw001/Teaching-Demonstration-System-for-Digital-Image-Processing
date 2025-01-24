package com.dao;

import com.entity.XuexigonggaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XuexigonggaoVO;
import com.entity.view.XuexigonggaoView;


/**
 * 学习公告
 * 
 * @author 
 * @email 
 * @date 2023-02-10 13:25:28
 */
public interface XuexigonggaoDao extends BaseMapper<XuexigonggaoEntity> {
	
	List<XuexigonggaoVO> selectListVO(@Param("ew") Wrapper<XuexigonggaoEntity> wrapper);
	
	XuexigonggaoVO selectVO(@Param("ew") Wrapper<XuexigonggaoEntity> wrapper);
	
	List<XuexigonggaoView> selectListView(@Param("ew") Wrapper<XuexigonggaoEntity> wrapper);

	List<XuexigonggaoView> selectListView(Pagination page,@Param("ew") Wrapper<XuexigonggaoEntity> wrapper);
	
	XuexigonggaoView selectView(@Param("ew") Wrapper<XuexigonggaoEntity> wrapper);
	

}
