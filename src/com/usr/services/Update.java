/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.usr.services;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author sirbobby
 */
public class Update {
    private Update() {
        entityManagerFactory = Persistence.createEntityManagerFactory("controlMusicalPU");
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
    }
    
    public static Update getInstace() {
        if (update == null) update = new Update();
        return update;
    }
    
    public void  update(long id) {
        com.usr.services.Find find = com.usr.services.Find.getInstance();
    }
    
    private final EntityManagerFactory entityManagerFactory;
    private final EntityManager entityManager;
    private static Update update;
}
