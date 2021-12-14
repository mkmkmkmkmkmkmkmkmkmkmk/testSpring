package service.impl;

import dao.DishCartDao;
import model.DishCart;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import service.DishCartService;

import java.util.List;

public class DishCartServiceImpl implements DishCartService {
    private DishCartDao dishCartDao;
    //无参数构造器用配置：
    public DishCartServiceImpl() {
    }
    //有参数构造器用配置：
    public DishCartServiceImpl(DishCartDao dishCartDao) {
        this.dishCartDao = dishCartDao;
    }

    public void setDishCartDao(DishCartDao dishCartDao){
        this.dishCartDao=dishCartDao;
    }

    public List<DishCart> findDishCartByCustomer(int uid){
        return dishCartDao.getDish(uid);
    }

    @Override
    public boolean addDishCart(DishCart dishCart) {
        return false;
    }

    @Override
    public boolean modDishCart(DishCart dishCart) {
        return false;
    }

    @Override
    public boolean delDishCart(int uid, int did) {
        return false;
    }

    @Override
    public boolean claerDishCart(int uid) {
        return false;
    }

    /**
     * 调用dao实现注入数据并返回注入的字符串
     * @return
     */
    public String toStr() {
        return dishCartDao.toString();//dao层有返回值，所以不用写return

    }

    //DishCartDaoImpl dishCartDao=new DishCartDaoImpl();
    //@Override
    //public List<DishCart> findDishCartByCustomer(int uid) {
    //    return dishCartDao.getDish(uid);
    //}
    //
    //@Override
    //public boolean addDishCart(DishCart dishCart) {
    //    return dishCartDao.insetDishCart(dishCart);
    //}
    //
    //@Override
    //public boolean modDishCart(DishCart dishCart) {
    //    return dishCartDao.modDishCart(dishCart.getUid(),dishCart.getDid(),dishCart.getNumber());
    //}
    //
    //@Override
    //public boolean delDishCart(int uid, int did) {
    //    return dishCartDao.delDishCart(uid,did);
    //}
    //
    //@Override
    //public boolean claerDishCart(int uid) {
    //    return dishCartDao.clear(uid);
    //}
}
