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
public class Read {
    private Read() {
        entityManagerFactory = Persistence.createEntityManagerFactory("controlMusicalPU");
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
    }
    public static Read getInstance() {
        if (read == null) read = new Read();
        return read;
    }
    
    public void readArtist() {
        
    }
    
    private final EntityManagerFactory entityManagerFactory;
    private final EntityManager entityManager;
    private static Read read;
}
