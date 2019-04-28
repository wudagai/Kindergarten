package com.kindergarten.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kindergarten.Until.PageUtil;
import com.kindergarten.entity.Children;
import com.kindergarten.entity.Examination;
import com.kindergarten.entity.Medication;
import com.kindergarten.entity.User;
import com.kindergarten.service.ChildrenServiceIfac;

@Controller
@RequestMapping("/User")
public class ChildrenController {
	@Resource
	private ChildrenServiceIfac childrenService;
   //查询某个幼儿级详细信息
	@RequestMapping("/selectChildrenById.action")
	public ModelAndView selectChildrenById(Integer childrenId,HttpServletResponse response, HttpServletRequest request,
			HttpSession session) throws UnsupportedEncodingException {
		// 首先解决编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Children children = childrenService.selectChildrenById(childrenId);
		session.setAttribute("children", children);
		System.out.println(children);
		//获取用户信息
		User user=(User) session.getAttribute("userLogin");
		request.setAttribute("user", user);
		System.out.println("user"+user);
		ModelAndView mav = new ModelAndView();
		//mav.addObject("children", children);
		mav.setViewName("User/ChildrenInfo");
		return mav;
	}
	//处理幼儿体检信息方法
	@RequestMapping("/selectExaminationByChildren.action")
	public ModelAndView selectExaminationByChildren(Integer childrenId,HttpServletResponse response, HttpServletRequest request,
			HttpSession session) throws UnsupportedEncodingException {
			Children examination=childrenService.selectExaminationByChildren(childrenId);
			
			System.out.println("examination:"+examination);
			ModelAndView mav=new ModelAndView();
			mav.addObject("examination",examination);
			mav.setViewName("User/ChildrenExamination");
		    return mav;
		
	}
	//处理幼儿用药信息方法
	@RequestMapping("/selectMedicationByChildren.action")
	public ModelAndView selectMedicationByChildren(Integer childrenId,HttpServletResponse response, HttpServletRequest request,
			HttpSession session) throws UnsupportedEncodingException {
			Children childrenmedication=childrenService.selectMedicationByChildren(childrenId);
			System.out.println("medication:"+childrenmedication);
			ModelAndView mav=new ModelAndView();
			mav.addObject("childrenmedication",childrenmedication);
			mav.setViewName("User/ChildrenMedication");
			return mav;
				
				}
			
		}
	
