package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XuexigonggaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XuexigonggaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XuexigonggaoView;


/**
 * 学习公告
 *
 * @author 
 * @email 
 * @date 2023-02-10 13:25:28
 */
public interface XuexigonggaoService extends IService<XuexigonggaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XuexigonggaoVO> selectListVO(Wrapper<XuexigonggaoEntity> wrapper);
   	
   	XuexigonggaoVO selectVO(@Param("ew") Wrapper<XuexigonggaoEntity> wrapper);
   	
   	List<XuexigonggaoView> selectListView(Wrapper<XuexigonggaoEntity> wrapper);
   	
   	XuexigonggaoView selectView(@Param("ew") Wrapper<XuexigonggaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XuexigonggaoEntity> wrapper);
   	

}

