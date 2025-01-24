package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.XuexigonggaoEntity;
import com.entity.view.XuexigonggaoView;

import com.service.XuexigonggaoService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 学习公告
 * 后端接口
 * @author 
 * @email 
 * @date 2023-02-10 13:25:28
 */
@RestController
@RequestMapping("/xuexigonggao")
public class XuexigonggaoController {
    @Autowired
    private XuexigonggaoService xuexigonggaoService;


    @Autowired
    private StoreupService storeupService;

    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,XuexigonggaoEntity xuexigonggao, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			xuexigonggao.setJiaoshigonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<XuexigonggaoEntity> ew = new EntityWrapper<XuexigonggaoEntity>();


		PageUtils page = xuexigonggaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xuexigonggao), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,XuexigonggaoEntity xuexigonggao, 
		HttpServletRequest request){
        EntityWrapper<XuexigonggaoEntity> ew = new EntityWrapper<XuexigonggaoEntity>();

		PageUtils page = xuexigonggaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xuexigonggao), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( XuexigonggaoEntity xuexigonggao){
       	EntityWrapper<XuexigonggaoEntity> ew = new EntityWrapper<XuexigonggaoEntity>();
      	ew.allEq(MPUtil.allEQMapPre( xuexigonggao, "xuexigonggao")); 
        return R.ok().put("data", xuexigonggaoService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(XuexigonggaoEntity xuexigonggao){
        EntityWrapper< XuexigonggaoEntity> ew = new EntityWrapper< XuexigonggaoEntity>();
 		ew.allEq(MPUtil.allEQMapPre( xuexigonggao, "xuexigonggao")); 
		XuexigonggaoView xuexigonggaoView =  xuexigonggaoService.selectView(ew);
		return R.ok("查询学习公告成功").put("data", xuexigonggaoView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        XuexigonggaoEntity xuexigonggao = xuexigonggaoService.selectById(id);
        return R.ok().put("data", xuexigonggao);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        XuexigonggaoEntity xuexigonggao = xuexigonggaoService.selectById(id);
        return R.ok().put("data", xuexigonggao);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody XuexigonggaoEntity xuexigonggao, HttpServletRequest request){
    	xuexigonggao.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xuexigonggao);

        xuexigonggaoService.insert(xuexigonggao);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody XuexigonggaoEntity xuexigonggao, HttpServletRequest request){
    	xuexigonggao.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xuexigonggao);

        xuexigonggaoService.insert(xuexigonggao);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody XuexigonggaoEntity xuexigonggao, HttpServletRequest request){
        //ValidatorUtils.validateEntity(xuexigonggao);
        xuexigonggaoService.updateById(xuexigonggao);//全部更新
        return R.ok();
    }
    
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        xuexigonggaoService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<XuexigonggaoEntity> wrapper = new EntityWrapper<XuexigonggaoEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			wrapper.eq("jiaoshigonghao", (String)request.getSession().getAttribute("username"));
		}

		int count = xuexigonggaoService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	









}
