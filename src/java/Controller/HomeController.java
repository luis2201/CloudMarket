package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController { 
 
 ModelAndView view = new ModelAndView();
 
 @RequestMapping("home.htm")
 public ModelAndView Listar() {    
  view.setViewName("home/home");
  
  return view;
 }
}
