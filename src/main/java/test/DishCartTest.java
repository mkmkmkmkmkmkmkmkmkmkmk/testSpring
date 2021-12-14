package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import service.DishCartService;

/**
 * @Author：Weiyu
 * @Version:
 * @Since:
 * @date：2021-12-14_周二 09:54
 **/
public class DishCartTest {

    public static void main(String[] args) {
        ApplicationContext app=new ClassPathXmlApplicationContext("applicationContext.xml");
        DishCartService dishCartService=(DishCartService) app.getBean("dishCartService");
        System.out.println(dishCartService.findDishCartByCustomer(1));
        System.out.println(dishCartService.toStr());
    }
}
