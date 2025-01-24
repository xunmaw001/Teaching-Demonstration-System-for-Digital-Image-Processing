package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ZuoyegonggaoDao;
import com.entity.ZuoyegonggaoEntity;
import com.service.ZuoyegonggaoService;
import com.entity.vo.ZuoyegonggaoVO;
import com.entity.view.ZuoyegonggaoView;

@Service("zuoyegonggaoService")
public class ZuoyegonggaoServiceImpl extends ServiceImpl<ZuoyegonggaoDao, ZuoyegonggaoEntity> implements ZuoyegonggaoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZuoyegonggaoEntity> page = this.selectPage(
                new Query<ZuoyegonggaoEntity>(params).getPage(),
                new EntityWrapper<ZuoyegonggaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZuoyegonggaoEntity> wrapper) {
		  Page<ZuoyegonggaoView> page =new Query<ZuoyegonggaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZuoyegonggaoVO> selectListVO(Wrapper<ZuoyegonggaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZuoyegonggaoVO selectVO(Wrapper<ZuoyegonggaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZuoyegonggaoView> selectListView(Wrapper<ZuoyegonggaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZuoyegonggaoView selectView(Wrapper<ZuoyegonggaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
