/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.usr.objects;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author sirbobby
 */
@Entity
@Table(name = "DISC")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Disc.findAll", query = "SELECT d FROM Disc d")
    , @NamedQuery(name = "Disc.findByName", query = "SELECT d FROM Disc d WHERE d.name = :name")
    , @NamedQuery(name = "Disc.findByYear", query = "SELECT d FROM Disc d WHERE d.year = :year")
    , @NamedQuery(name = "Disc.findByProducedby", query = "SELECT d FROM Disc d WHERE d.producedby = :producedby")
    , @NamedQuery(name = "Disc.findByNumbersongs", query = "SELECT d FROM Disc d WHERE d.numbersongs = :numbersongs")})
public class Disc implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "NAME")
    private String name;
    @Column(name = "YEAR")
    private Integer year;
    @Column(name = "PRODUCEDBY")
    private String producedby;
    @Column(name = "NUMBERSONGS")
    private Integer numbersongs;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "discFk")
    private Collection<Song> songCollection;
    @JoinColumn(name = "ARTIST_FK", referencedColumnName = "NAME")
    @ManyToOne
    private Artist artistFk;

    public Disc() {
    }

    public Disc(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public String getProducedby() {
        return producedby;
    }

    public void setProducedby(String producedby) {
        this.producedby = producedby;
    }

    public Integer getNumbersongs() {
        return numbersongs;
    }

    public void setNumbersongs(Integer numbersongs) {
        this.numbersongs = numbersongs;
    }

    @XmlTransient
    public Collection<Song> getSongCollection() {
        return songCollection;
    }

    public void setSongCollection(Collection<Song> songCollection) {
        this.songCollection = songCollection;
    }

    public Artist getArtistFk() {
        return artistFk;
    }

    public void setArtistFk(Artist artistFk) {
        this.artistFk = artistFk;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (name != null ? name.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Disc)) {
            return false;
        }
        Disc other = (Disc) object;
        if ((this.name == null && other.name != null) || (this.name != null && !this.name.equals(other.name))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.usr.objects.Disc[ name=" + name + " ]";
    }
    
}
