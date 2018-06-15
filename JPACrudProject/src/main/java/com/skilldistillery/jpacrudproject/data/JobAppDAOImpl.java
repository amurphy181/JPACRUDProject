package com.skilldistillery.jpacrudproject.data;

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
}
