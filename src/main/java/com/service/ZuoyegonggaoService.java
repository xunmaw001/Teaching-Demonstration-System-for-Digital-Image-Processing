package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZuoyegonggaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZuoyegonggaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZuoyegonggaoView;


/**
 * 作业公告
 *
 * @author 
 * @email 
 * @date 2023-02-10 13:25:28
 */
public interface ZuoyegonggaoService extends IService<ZuoyegonggaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZuoyegonggaoVO> selectListVO(Wrapper<ZuoyegonggaoEntity> wrapper);
   	
   	ZuoyegonggaoVO selectVO(@Param("ew") Wrapper<ZuoyegonggaoEntity> wrapper);
   	
   	List<ZuoyegonggaoView> selectListView(Wrapper<ZuoyegonggaoEntity> wrapper);
   	
   	ZuoyegonggaoView selectView(@Param("ew") Wrapper<ZuoyegonggaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZuoyegonggaoEntity> wrapper);
   	

}

