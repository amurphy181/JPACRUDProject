package com.skilldistillery.jpajobapplication.client;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.jpajobapplication.entities.Application;

public class ApplicationClient {

	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpacrudworkspace");
		EntityManager em = emf.createEntityManager();

		Application app = em.find(Application.class, 2);

		System.out.println(app);
		// No memory leaks...
		em.close();
		emf.close();
	}

}
