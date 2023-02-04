/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.History;
import entity.Book;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class HistoryFacade extends AbstractFacade<History> {

    @PersistenceContext(unitName = "JKTV21webLibraryPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public HistoryFacade() {
        super(History.class);
    }
    
    public List<History> getListTakeBooks() {
        List<History> listTakedBooks = em.createQuery("SELECT h FROM History h WHERE h.returnBook = null")
                .getResultList();
        return listTakedBooks;
    }
    
    public List<History> getHistory() {
        
        List<History> listTakedBooks = em.createQuery("SELECT h FROM History h ORDER BY h.takeOnBook DESC")
                .getResultList();
        return listTakedBooks;
    }
    
}
