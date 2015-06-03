package controller;

import Dao.model.Activities;
import Dao.model.Competitions;
import Dao.model.Introduction;
import Dao.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.GetAllNewsService;
import service.GetAllhdService;
import service.GetAlljsService;
import service.GetIntroService;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class IndexController  {
	@Autowired
	GetAllNewsService getAllnewsService;
	@Autowired
	GetAlljsService getAlljsService;
	@Autowired
	GetAllhdService getAllhdService;
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String reqIndex(ModelMap modelMap,HttpSession httpSession){
		int count = 7;
		List<News> newsList;
		newsList=getAllnewsService.getAllNews(count);
		modelMap.addAttribute("newsList",newsList);

		List<Competitions> jsList;
		jsList=getAlljsService.getAlljs(count);
		modelMap.addAttribute("jsList",jsList);

		List<Activities> hdList;
		hdList=getAllhdService.getAllhd(count);
		modelMap.addAttribute("hdList",hdList);
		return "index";
	}
	
	@RequestMapping(value="/footer",method=RequestMethod.GET)
	public String reqFooter(){
		System.out.println("req for footer");
		return "footer";
	}
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String reqIndex2(ModelMap modelMap){
		int count = 7;
		List<News> newsList;
		newsList=getAllnewsService.getAllNews(count);
		modelMap.addAttribute("newsList",newsList);

		List<Competitions> jsList;
		jsList=getAlljsService.getAlljs(count);
		modelMap.addAttribute("jsList",jsList);

		List<Activities> hdList;
		hdList=getAllhdService.getAllhd(count);
		modelMap.addAttribute("hdList",hdList);
		System.out.println("req for index");
		return "index";
	}

	@Autowired
	GetIntroService getIntroService;
	@RequestMapping(value="/gaikuang",method=RequestMethod.GET)
	public String reqGaikuang(ModelMap modelMap){
		short id=1;
		Introduction intro = getIntroService.getIntro(id);
		modelMap.addAttribute("intro",intro);
		System.out.println("req for gaikuang");
		return "gaikuang";
	}
	
	@RequestMapping(value="/zhangcheng",method=RequestMethod.GET)
	public String reqZhangcheng(ModelMap modelMap){
		short id=2;
		Introduction intro = getIntroService.getIntro(id);
		modelMap.addAttribute("intro",intro);
		System.out.println("req for zhangcheng");
		return "zhangcheng";
	}
	
	@RequestMapping(value="/jigou",method=RequestMethod.GET)
	public String reqJigou(ModelMap modelMap){
		short id=3;
		Introduction intro = getIntroService.getIntro(id);
		modelMap.addAttribute("intro",intro);
		System.out.println("req for jigou");
		return "jigou";
	}
	
	@RequestMapping(value="/jiangxiang",method=RequestMethod.GET)
	public String reqJiangxiang(ModelMap modelMap){
		short id=4;
		Introduction intro = getIntroService.getIntro(id);
		modelMap.addAttribute("intro",intro);
		System.out.println("req for jiangxiang");
		return "jiangxiang";
	}
	
	@RequestMapping(value="/meeting",method=RequestMethod.GET)
	public String reqMeeting(ModelMap modelMap){
		short id=5;
		Introduction intro = getIntroService.getIntro(id);
		modelMap.addAttribute("intro",intro);
		System.out.println("req for meeting");
		return "meeting";
	}
	
	@RequestMapping(value="/photo",method=RequestMethod.GET)
	public String reqPhoto(ModelMap modelMap){
		short id=6;
		Introduction intro = getIntroService.getIntro(id);
		modelMap.addAttribute("intro",intro);
		System.out.println("req for photo");
		return "photo";
	}
	
	@RequestMapping(value="/plan",method=RequestMethod.GET)
	public String reqPlan(ModelMap modelMap){
		short id=7;
		Introduction intro = getIntroService.getIntro(id);
		modelMap.addAttribute("intro",intro);
		System.out.println("req for plan");
		return "plan";
	}
}
