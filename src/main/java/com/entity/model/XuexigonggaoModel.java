package com.entity.model;

import com.entity.XuexigonggaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 学习公告
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-02-10 13:25:28
 */
public class XuexigonggaoModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 教师姓名
	 */
	
	private String jiaoshixingming;
		
	/**
	 * 学习标题
	 */
	
	private String xuexibiaoti;
		
	/**
	 * 封面
	 */
	
	private String fengmian;
		
	/**
	 * 学习文件
	 */
	
	private String xuexiwenjian;
		
	/**
	 * 发布时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date fabushijian;
		
	/**
	 * 学习详情
	 */
	
	private String xuexixiangqing;
				
	
	/**
	 * 设置：教师姓名
	 */
	 
	public void setJiaoshixingming(String jiaoshixingming) {
		this.jiaoshixingming = jiaoshixingming;
	}
	
	/**
	 * 获取：教师姓名
	 */
	public String getJiaoshixingming() {
		return jiaoshixingming;
	}
				
	
	/**
	 * 设置：学习标题
	 */
	 
	public void setXuexibiaoti(String xuexibiaoti) {
		this.xuexibiaoti = xuexibiaoti;
	}
	
	/**
	 * 获取：学习标题
	 */
	public String getXuexibiaoti() {
		return xuexibiaoti;
	}
				
	
	/**
	 * 设置：封面
	 */
	 
	public void setFengmian(String fengmian) {
		this.fengmian = fengmian;
	}
	
	/**
	 * 获取：封面
	 */
	public String getFengmian() {
		return fengmian;
	}
				
	
	/**
	 * 设置：学习文件
	 */
	 
	public void setXuexiwenjian(String xuexiwenjian) {
		this.xuexiwenjian = xuexiwenjian;
	}
	
	/**
	 * 获取：学习文件
	 */
	public String getXuexiwenjian() {
		return xuexiwenjian;
	}
				
	
	/**
	 * 设置：发布时间
	 */
	 
	public void setFabushijian(Date fabushijian) {
		this.fabushijian = fabushijian;
	}
	
	/**
	 * 获取：发布时间
	 */
	public Date getFabushijian() {
		return fabushijian;
	}
				
	
	/**
	 * 设置：学习详情
	 */
	 
	public void setXuexixiangqing(String xuexixiangqing) {
		this.xuexixiangqing = xuexixiangqing;
	}
	
	/**
	 * 获取：学习详情
	 */
	public String getXuexixiangqing() {
		return xuexixiangqing;
	}
			
}
