package dao;

import crowdfunding.Donate;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class DonateDAOImpl implements DonateDAO {

    @Autowired
    SessionFactory sessionFactory;

    public void insert(Donate donate) {
        sessionFactory.getCurrentSession().save(donate);
    }

    public List<Donate> selectAll() {
        Query query = sessionFactory.getCurrentSession().createQuery("from donates");
        return query.list();
    }

    public Donate findById(int id) {
        Donate donate = sessionFactory.getCurrentSession().get(Donate.class,id);
        return donate;
    }

    public void delete(Donate donate) {
        sessionFactory.getCurrentSession().delete(donate);
    }

    public void update(Donate donate) {
        sessionFactory.getCurrentSession().update(donate);
    }
}
