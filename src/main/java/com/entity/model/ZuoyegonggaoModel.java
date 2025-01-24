package com.entity.model;

import com.entity.ZuoyegonggaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 作业公告
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-02-10 13:25:28
 */
public class ZuoyegonggaoModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 教师姓名
	 */
	
	private String jiaoshixingming;
		
	/**
	 * 作业标题
	 */
	
	private String zuoyebiaoti;
		
	/**
	 * 作业封面
	 */
	
	private String zuoyefengmian;
		
	/**
	 * 作业文件
	 */
	
	private String zuoyewenjian;
		
	/**
	 * 作业详情
	 */
	
	private String zuoyexiangqing;
				
	
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
	 * 设置：作业标题
	 */
	 
	public void setZuoyebiaoti(String zuoyebiaoti) {
		this.zuoyebiaoti = zuoyebiaoti;
	}
	
	/**
	 * 获取：作业标题
	 */
	public String getZuoyebiaoti() {
		return zuoyebiaoti;
	}
				
	
	/**
	 * 设置：作业封面
	 */
	 
	public void setZuoyefengmian(String zuoyefengmian) {
		this.zuoyefengmian = zuoyefengmian;
	}
	
	/**
	 * 获取：作业封面
	 */
	public String getZuoyefengmian() {
		return zuoyefengmian;
	}
				
	
	/**
	 * 设置：作业文件
	 */
	 
	public void setZuoyewenjian(String zuoyewenjian) {
		this.zuoyewenjian = zuoyewenjian;
	}
	
	/**
	 * 获取：作业文件
	 */
	public String getZuoyewenjian() {
		return zuoyewenjian;
	}
				
	
	/**
	 * 设置：作业详情
	 */
	 
	public void setZuoyexiangqing(String zuoyexiangqing) {
		this.zuoyexiangqing = zuoyexiangqing;
	}
	
	/**
	 * 获取：作业详情
	 */
	public String getZuoyexiangqing() {
		return zuoyexiangqing;
	}
			
}
