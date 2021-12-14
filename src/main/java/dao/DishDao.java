package dao;

import model.Dish;

import java.util.List;

public interface DishDao {
    /**
     * 查询所有菜品
     * @return
     */
    public List<Dish> findAll();

    /**
     * 根据字段查找餐品集合
     * @param name
     * @return
     */
    public List<Dish> findDishByName(String name);


}
