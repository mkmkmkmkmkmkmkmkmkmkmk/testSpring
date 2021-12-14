package dao.impl;

import dao.DishDao;
import model.Dish;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import utils.JDBCUtils;

import java.util.List;
import java.util.Map;
import java.util.Properties;

public class DishDaoImpl implements DishDao {


    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public List<Dish> findAll() {
        String sql = "select * from dish ";
        return template.query(sql,new BeanPropertyRowMapper<Dish>(Dish.class));
    }

    @Override
    public List<Dish> findDishByName(String name) {
        try {
            String sql = "select * from dish where name like ? ";
            return template.query(sql,new BeanPropertyRowMapper<Dish>(Dish.class),name);
        } catch (DataAccessException e) {
            return null;
        }
    }
}
