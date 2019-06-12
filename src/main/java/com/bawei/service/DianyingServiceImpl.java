package com.bawei.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bawei.bean.Dianying;
import com.bawei.dao.DianyingMapper;

import aj.org.objectweb.asm.Type;

@Service
public class DianyingServiceImpl implements DianyingService{
@Autowired
private DianyingMapper mapper;
@Override
	public List getList(String name) {
		// TODO Auto-generated method stub
		return mapper.getList(name);
	}
@Override
	public void delete(String id) {
		mapper.delete(id);
		
	}
@Override
	public List<Type> getDate() {
		// TODO Auto-generated method stub
		return mapper.getDate();
	}
@Override
	public void Add(Dianying dianying) {
		// TODO Auto-generated method stub
		mapper.Add(dianying);
	}
}
