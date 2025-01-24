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


import com.dao.XuexigonggaoDao;
import com.entity.XuexigonggaoEntity;
import com.service.XuexigonggaoService;
import com.entity.vo.XuexigonggaoVO;
import com.entity.view.XuexigonggaoView;

@Service("xuexigonggaoService")
public class XuexigonggaoServiceImpl extends ServiceImpl<XuexigonggaoDao, XuexigonggaoEntity> implements XuexigonggaoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XuexigonggaoEntity> page = this.selectPage(
                new Query<XuexigonggaoEntity>(params).getPage(),
                new EntityWrapper<XuexigonggaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XuexigonggaoEntity> wrapper) {
		  Page<XuexigonggaoView> page =new Query<XuexigonggaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XuexigonggaoVO> selectListVO(Wrapper<XuexigonggaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XuexigonggaoVO selectVO(Wrapper<XuexigonggaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XuexigonggaoView> selectListView(Wrapper<XuexigonggaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XuexigonggaoView selectView(Wrapper<XuexigonggaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
