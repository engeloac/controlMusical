/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.usr.objects;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author sirbobby
 */
@Entity
@Table(name = "SONG")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Song.findAll", query = "SELECT s FROM Song s")
    , @NamedQuery(name = "Song.findByTitle", query = "SELECT s FROM Song s WHERE s.title = :title")
    , @NamedQuery(name = "Song.findByTime", query = "SELECT s FROM Song s WHERE s.time = :time")})
public class Song implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "TITLE")
    private String title;
    @Column(name = "TIME")
    private String time;
    @JoinColumn(name = "ARTIST_FK", referencedColumnName = "NAME")
    @ManyToOne(optional = false)
    private Artist artistFk;
    @JoinColumn(name = "DISC_FK", referencedColumnName = "NAME")
    @ManyToOne(optional = false)
    private Disc discFk;

    public Song() {
    }

    public Song(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Artist getArtistFk() {
        return artistFk;
    }

    public void setArtistFk(Artist artistFk) {
        this.artistFk = artistFk;
    }

    public Disc getDiscFk() {
        return discFk;
    }

    public void setDiscFk(Disc discFk) {
        this.discFk = discFk;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (title != null ? title.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Song)) {
            return false;
        }
        Song other = (Song) object;
        if ((this.title == null && other.title != null) || (this.title != null && !this.title.equals(other.title))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.usr.objects.Song[ title=" + title + " ]";
    }
    
}
