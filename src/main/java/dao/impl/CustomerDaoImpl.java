package dao.impl;

import dao.CustomerDao;
import model.Customer;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import utils.JDBCUtils;

import java.util.List;
import java.util.Map;
import java.util.Properties;

public class CustomerDaoImpl implements CustomerDao {


    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public Customer login(String name,String password) {
        try {
            String sql = "select * from customer where name = ? and password = ?";
            return template.queryForObject(sql,new BeanPropertyRowMapper<Customer>(Customer.class),name,password);
        } catch (DataAccessException e) {
            return null;
        }
    }

    @Override
    public boolean register(Customer customer) {
        String sql = "insert into customer values(null,?,?,?,?,?)";
        if(template.update(sql,customer.getName(),customer.getEmail(),customer.getPassword(),customer.getStatus(),customer.getUuid())==1){
            return true;
        }else {
            return false;
        }


    }

    @Override
    public Customer findCustomerByName(String username) {
        Customer customer = null;
        try {
            //1.定义sql
            String sql = "select * from customer where  name= ?";
            //2.执行sql
            customer = template.queryForObject(sql, new BeanPropertyRowMapper<Customer>(Customer.class), username);
        } catch (Exception e) {
            return  null;
        }
        return customer;
    }

    @Override
    public Customer findByCode(String code) {
        Customer customer = null;
        try {
            String sql = "select * from customer where uuid = ?";
            customer = template.queryForObject(sql,new BeanPropertyRowMapper<Customer>(Customer.class),code);
        } catch (DataAccessException e) {
           return null;
        }
        return customer;
    }

    @Override
    public void updateStatus(Customer user) {
        String sql = " update customer set status = 1 where uuid=?";
        template.update(sql,user.getUuid());
    }
}
