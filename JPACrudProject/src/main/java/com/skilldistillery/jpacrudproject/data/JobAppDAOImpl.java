package com.skilldistillery.jpacrudproject.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpajobapplication.entities.Application;

@Transactional
@Component
public class JobAppDAOImpl implements JobAppDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Application show(int id) {
		return em.find(Application.class, id);
	}

	@Override
	public List<Application> index() {
		String jobAppIndexSQL = "SELECT a FROM Application a";
		List<Application> jobAppIndex = em.createQuery(jobAppIndexSQL, Application.class).getResultList();
		
		return jobAppIndex;
	}

	@Override
	public Application addApplication(Application app) {
		em.persist(app);
		em.flush();
		return app;
	}

	@Override
	public boolean deleteApplication(int id) {
		Application a = em.find(Application.class, id);
		em.remove(a);
		em.flush();
		
		if(em.find(Application.class, a.getId()) == null) {
			return true;
		}
		
		return false;
	}

	@Override
	public Application update(int id, Application updatedActor) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
