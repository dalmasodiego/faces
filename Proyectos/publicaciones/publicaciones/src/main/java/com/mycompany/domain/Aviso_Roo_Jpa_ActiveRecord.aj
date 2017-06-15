// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mycompany.domain;

import com.mycompany.domain.Aviso;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Aviso_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Aviso.entityManager;
    
    public static final EntityManager Aviso.entityManager() {
        EntityManager em = new Aviso().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Aviso.countAvisoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Aviso o", Long.class).getSingleResult();
    }
    
    public static List<Aviso> Aviso.findAllAvisoes() {
        return entityManager().createQuery("SELECT o FROM Aviso o", Aviso.class).getResultList();
    }
    
    public static Aviso Aviso.findAviso(Integer codigo) {
        if (codigo == null) return null;
        return entityManager().find(Aviso.class, codigo);
    }
    
    public static List<Aviso> Aviso.findAvisoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Aviso o", Aviso.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Aviso.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Aviso.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Aviso attached = Aviso.findAviso(this.codigo);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Aviso.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Aviso.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Aviso Aviso.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Aviso merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
