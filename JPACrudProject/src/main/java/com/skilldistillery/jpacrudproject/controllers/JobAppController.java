package com.skilldistillery.jpacrudproject.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrudproject.data.JobAppDAO;
import com.skilldistillery.jpajobapplication.entities.Application;

@Controller
public class JobAppController {
	@Autowired
	private JobAppDAO jobAppDAO;
	
	@RequestMapping(path= "index.do")
	public String welcome() {
		return "WEB-INF/index.jsp";
	}
	
	@RequestMapping(path = "getJobApp.do", method = RequestMethod.GET)
	public ModelAndView getJobApp(@RequestParam("fid") int fid) {
		ModelAndView mv = new ModelAndView();

	    Application app = jobAppDAO.show(fid);     
	    // film is unmanaged after it is outside of the transaction that exists in the DAO

	    mv.addObject("jobApp", app);
	    mv.setViewName("WEB-INF/jobApp/show.jsp");
	    return mv;
	}
	

}
