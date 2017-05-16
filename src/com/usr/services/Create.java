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
public class Create {
    private Create(){
        entityManagerFactory = Persistence.createEntityManagerFactory("controlMusicalPU");
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
    }
    
    public static Create getInstance() {
        if (create == null) create = new Create();
        return create;
    }
    
    public void createArtist(com.usr.objects.Artist artist) {
        entityManager.persist(artist);
    }
    
    public void save() {
        entityManager.getTransaction().commit();
        entityManager.close();
        entityManagerFactory.close();
    }
    
    private final EntityManagerFactory entityManagerFactory;
    private final EntityManager entityManager;
    private static Create create;
}