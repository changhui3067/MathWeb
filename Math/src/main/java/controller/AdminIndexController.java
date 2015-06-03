package controller;

import Dao.model.Activities;
import Dao.model.Competitions;
import Dao.model.Introduction;
import Dao.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import service.*;

import javax.servlet.http.HttpSession;


@Controller
public class AdminIndexController {

	@RequestMapping(value="/admin/index",method=RequestMethod.GET)
	public String adminGet(){
		System.out.println("ask for admin page");
		return "admin/index";
	}

	@RequestMapping(value="/admin/{typeid}",method=RequestMethod.GET)
	public String subadminGet(@PathVariable("typeid") short typeid, ModelMap modelMap,
							  HttpSession httpSession){
		modelMap.addAttribute("typeid", typeid);
		System.out.println("ask for sub admin page"+typeid);
		return "admin/1";
	}

	@Autowired
	AddNewsService addNewsService;
	@Autowired
	AddhdService addhdService;
	@Autowired
	AddjsService addjsService;
	@Autowired
	UpdateIntroService updateIntroService;
	@RequestMapping(value="/admin/adminChange", method=RequestMethod.POST)
	@ResponseBody
	public String adminChange(@RequestParam(value="type",required = false) short typeid,
							  @RequestParam(value="title",required = false) String title,
							  @RequestParam(value="content",required = false) String content,
							  ModelMap modelMap){
		System.out.println("get changed:"+typeid+"\t"+title+"\t"+content);
		int result=0;
		switch (typeid){
			case 11:
				News news = new News();
				news.setTitle(title);
				news.setContent(content);
				result = addNewsService.addNews(news);
				break;
			case 12:
				Activities hd = new Activities();
				hd.setTitle(title);
				hd.setContent(content);
				result = addhdService.addHd(hd);
				break;
			case 13:
				Competitions js = new Competitions();
				js.setTitle(title);
				js.setContent(content);
				result = addjsService.addJs(js);
				break;
			case 1:
			case 2:
			case 3:
			case 4:
			case 5:
			case 6:
			case 7:
				Introduction intro = new Introduction();
				intro.setIntroid(typeid);
				intro.setIntrotitle(title);
				intro.setIntrocontent(content);
				result = updateIntroService.updateIntro(intro);
				break;
			default:break;
		}

		if(result != 0)
			return "success";
		else
			return "false";
	}
}
