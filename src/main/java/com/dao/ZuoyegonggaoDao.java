package com.dao;

import com.entity.ZuoyegonggaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZuoyegonggaoVO;
import com.entity.view.ZuoyegonggaoView;


/**
 * 作业公告
 * 
 * @author 
 * @email 
 * @date 2023-02-10 13:25:28
 */
public interface ZuoyegonggaoDao extends BaseMapper<ZuoyegonggaoEntity> {
	
	List<ZuoyegonggaoVO> selectListVO(@Param("ew") Wrapper<ZuoyegonggaoEntity> wrapper);
	
	ZuoyegonggaoVO selectVO(@Param("ew") Wrapper<ZuoyegonggaoEntity> wrapper);
	
	List<ZuoyegonggaoView> selectListView(@Param("ew") Wrapper<ZuoyegonggaoEntity> wrapper);

	List<ZuoyegonggaoView> selectListView(Pagination page,@Param("ew") Wrapper<ZuoyegonggaoEntity> wrapper);
	
	ZuoyegonggaoView selectView(@Param("ew") Wrapper<ZuoyegonggaoEntity> wrapper);
	

}
