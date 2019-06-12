package com.bawei.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bawei.bean.Dianying;
import com.bawei.service.DianyingService;
import com.bawei.utils.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.org.glassfish.external.statistics.annotations.Reset;
import com.sun.tools.internal.ws.processor.model.Model;

import aj.org.objectweb.asm.Type;


@Controller
public class DianyingController {
@Autowired
//列表方法
private DianyingService service;
@RequestMapping("list")
public String list(org.springframework.ui.Model model,@RequestParam(defaultValue="")String name,@RequestParam(defaultValue="1")int pageNum) {
	PageHelper.startPage(pageNum, 2);
	List list=service.getList(name);
	PageInfo info=new PageInfo(list);
	Page.fenye(model, info, "");
	model.addAttribute("list", list);
	System.out.println(list);
	model.addAttribute("name", name);
	return "list";
	
}
//删除方法
@RequestMapping("delete")
@ResponseBody
public boolean delete(String id) {
	try {
		service.delete(id);
		return true;
	} catch (Exception e) {
		e.printStackTrace();
		return false;
	}
	
}
//数据回显
@RequestMapping("getDate")
@ResponseBody
public List<Type> getDate(){
	List<Type> getDate=service.getDate();
	return getDate;
	
}
//添加功能
@RequestMapping("Add")
public String  Add(Dianying dianying) {
	service.Add(dianying);
	return "redirect:list";
	
}
}
