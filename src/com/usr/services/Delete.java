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
public class Delete {
    private Delete(){
        entityManagerFactory = Persistence.createEntityManagerFactory("controlMusicalPU");
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
    }
    
    public Delete getInstance() {
        if (delete == null) delete = new Delete();
        return delete;
    }
    
    public void delete(long id) {
        com.usr.services.Find find = com.usr.services.Find.getInstance();
        
    }
    
    private final EntityManagerFactory entityManagerFactory;
    private final EntityManager entityManager;
    private Delete delete;
}
