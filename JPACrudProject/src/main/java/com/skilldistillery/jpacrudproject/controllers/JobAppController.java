package com.skilldistillery.jpacrudproject.controllers;

import java.util.List;

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

	@RequestMapping(path = "index.do")
	public String welcome() {
		return "WEB-INF/index.jsp";
	}

	@RequestMapping(path = "getJobApp.do", method = RequestMethod.GET)
	public ModelAndView getJobApp(@RequestParam("fid") int fid) {
		ModelAndView mv = new ModelAndView();

		Application app = jobAppDAO.show(fid);
		// film is unmanaged after it is outside of the transaction that exists in the
		// DAO

		mv.addObject("jobApp", app);
		mv.setViewName("WEB-INF/jobApp/show.jsp");
		return mv;
	}

	@RequestMapping(path = "jobs.do", method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();

		List<Application> app = jobAppDAO.index();

		mv.addObject("jobApp", app);
		mv.setViewName("WEB-INF/jobApp/listJobApps.jsp");

		return mv;
	}

	@RequestMapping(path = "addJob.do", method = RequestMethod.GET)
	public ModelAndView directToAddJob() {
		ModelAndView mv = new ModelAndView();

		Application app = new Application();

		mv.addObject("jobApp", app);
		mv.setViewName("WEB-INF/jobApp/addNewJobApp.jsp");

		return mv;
	}

	@RequestMapping(path = "jobAppAdded.do", method = RequestMethod.POST)
	public ModelAndView setAddedJob(Application app) {
		ModelAndView mv = new ModelAndView();
		Application newApp = app;

		jobAppDAO.addApplication(newApp);

		mv.addObject("jobApp", newApp);
		mv.setViewName("WEB-INF/jobApp/show.jsp");
		return mv;
	}

	@RequestMapping(path = "deleteJobApp.do", method = RequestMethod.POST)
	public ModelAndView deleteJobApp(int id) {
		ModelAndView mv = new ModelAndView();

		jobAppDAO.deleteApplication(id);

		mv.setViewName("redirect:jobs.do");

		return mv;
	}

}
