package com.entity.view;

import com.entity.JiaoxueshipinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 教学视频
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-02-10 13:25:28
 */
@TableName("jiaoxueshipin")
public class JiaoxueshipinView  extends JiaoxueshipinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiaoxueshipinView(){
	}
 
 	public JiaoxueshipinView(JiaoxueshipinEntity jiaoxueshipinEntity){
 	try {
			BeanUtils.copyProperties(this, jiaoxueshipinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
