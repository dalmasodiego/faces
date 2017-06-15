// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mycompany.domain;

import com.mycompany.domain.Donante;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Donante_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Donante.entityManager;
    
    public static final EntityManager Donante.entityManager() {
        EntityManager em = new Donante().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Donante.countDonantes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Donante o", Long.class).getSingleResult();
    }
    
    public static List<Donante> Donante.findAllDonantes() {
        return entityManager().createQuery("SELECT o FROM Donante o", Donante.class).getResultList();
    }
    
    public static Donante Donante.findDonante(Long id) {
        if (id == null) return null;
        return entityManager().find(Donante.class, id);
    }
    
    public static List<Donante> Donante.findDonanteEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Donante o", Donante.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Donante.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Donante.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Donante attached = Donante.findDonante(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Donante.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Donante.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Donante Donante.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Donante merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
