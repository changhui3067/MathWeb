/**
 * 
 */
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * @author tushen
 * @date Nov 5, 2011
 */
@Controller
public class MyHomeController  {

	@RequestMapping(value="/user/home",method=RequestMethod.GET)
	public String ajaxGet(){
		
		return "MyHome";
	}
}
