package controller;

import Dao.model.Activities;
import Dao.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.GetAllNewsService;
import service.GetAllhdService;
import service.GethdService;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class showhdController  {
	@Autowired
	GetAllhdService getAllhdService;
	@RequestMapping(value="/huodong",method=RequestMethod.GET)
	public String reqHuodong(ModelMap modelMap,HttpSession httpSession){
		int hdCount = 3;
		List<Activities> hdList;
		hdList=getAllhdService.getAllhd(hdCount);
		modelMap.addAttribute("hdList",hdList);
		return "huodong";
	}

	@Autowired
	GethdService gethdService;
	@RequestMapping(value="/showhuodong.jsp/{hdid}",method=RequestMethod.GET)
	public String ajaxGet(@PathVariable("hdid") short hdid, ModelMap modelMap,
						  HttpSession httpSession){
		Activities hd = gethdService.getHd(hdid);
		modelMap.addAttribute("hd", hd);

		System.out.println(hdid);
		return "showhuodong";
	}
}
