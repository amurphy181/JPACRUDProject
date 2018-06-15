package com.skilldistillery.jpacrudproject.data;

import java.util.List;

import com.skilldistillery.jpajobapplication.entities.Application;

public interface JobAppDAO {
	public Application show(int id);
	public List<Application> index();
	public Application addApplication(Application app);
	public boolean deleteApplication(int id);
	public Application update(int id, Application updatedActor);

}
