package com.bawei.service;

import java.util.List;

import com.bawei.bean.Dianying;

import aj.org.objectweb.asm.Type;

public interface DianyingService {
     //列表
	List getList(String name);
     //删除
	void delete(String id);
	List<Type> getDate();
	void Add(Dianying dianying);

}
