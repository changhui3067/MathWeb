package controller;

import Dao.model.Competitions;
import Dao.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.GetAlljsService;
import service.GetjsService;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class showjsController {
	@Autowired
	GetAlljsService getAlljsService;
	@RequestMapping(value="/jingsai",method=RequestMethod.GET)
	public String reqJingsai(ModelMap modelMap,HttpSession httpSession){
		int jsCount = 3;
		List<Competitions> jsList;
		jsList=getAlljsService.getAlljs(jsCount);
		modelMap.addAttribute("jsList",jsList);
		return "jingsai";
	}

	@Autowired
	GetjsService getjsService;
	@RequestMapping(value="/showjingsai.jsp/{jsid}",method=RequestMethod.GET)
	public String showjingsai(@PathVariable("jsid") short jsid, ModelMap modelMap,
							  HttpSession httpSession){
		Competitions js = getjsService.getJs(jsid);
		modelMap.addAttribute("js", js);

		System.out.println(jsid);
		return "showjingsai";
	}
}
