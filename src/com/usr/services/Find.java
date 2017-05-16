/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.usr.services;

import com.usr.objects.Artist;
import com.usr.objects.Disc;
import com.usr.objects.Song;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author sirbobby
 */
public class Find {
    private Find() {
        entityManagerFactory = Persistence.createEntityManagerFactory("controlMusicalPU");
        entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
    }
    public static Find getInstance() {
        if (find == null) find = new Find();
        return find;
    }
    
    public Song findSong(String primaryKey) {
        Song song = entityManager.find(Song.class, primaryKey);
        return song;
    }
    
    public Disc findDisc(String primaryKey) {
        Disc disc = entityManager.find(Disc.class, primaryKey );
        return disc;
    }
    
    public Artist findArtist(String primaryKey) {
        Artist artist = entityManager.find(Artist.class, primaryKey);
        return artist;
    }
    
    private final EntityManagerFactory entityManagerFactory;
    private final EntityManager entityManager;
    private static Find find;
}
