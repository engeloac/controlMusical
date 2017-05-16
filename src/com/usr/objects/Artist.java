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
@Table(name = "ARTIST")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Artist.findAll", query = "SELECT a FROM Artist a")
    , @NamedQuery(name = "Artist.findByName", query = "SELECT a FROM Artist a WHERE a.name = :name")
    , @NamedQuery(name = "Artist.findByLastname", query = "SELECT a FROM Artist a WHERE a.lastname = :lastname")
    , @NamedQuery(name = "Artist.findByAge", query = "SELECT a FROM Artist a WHERE a.age = :age")
    , @NamedQuery(name = "Artist.findByNumberdiscs", query = "SELECT a FROM Artist a WHERE a.numberdiscs = :numberdiscs")})
public class Artist implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "NAME")
    private String name;
    @Column(name = "LASTNAME")
    private String lastname;
    @Column(name = "AGE")
    private Integer age;
    @Column(name = "NUMBERDISCS")
    private Integer numberdiscs;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "artistFk")
    private Collection<Song> songCollection;
    @OneToMany(mappedBy = "artistFk")
    private Collection<Disc> discCollection;

    public Artist() {
    }

    public Artist(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getNumberdiscs() {
        return numberdiscs;
    }

    public void setNumberdiscs(Integer numberdiscs) {
        this.numberdiscs = numberdiscs;
    }

    @XmlTransient
    public Collection<Song> getSongCollection() {
        return songCollection;
    }

    public void setSongCollection(Collection<Song> songCollection) {
        this.songCollection = songCollection;
    }

    @XmlTransient
    public Collection<Disc> getDiscCollection() {
        return discCollection;
    }

    public void setDiscCollection(Collection<Disc> discCollection) {
        this.discCollection = discCollection;
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
        if (!(object instanceof Artist)) {
            return false;
        }
        Artist other = (Artist) object;
        if ((this.name == null && other.name != null) || (this.name != null && !this.name.equals(other.name))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.usr.objects.Artist[ name=" + name + " ]";
    }
    
}
