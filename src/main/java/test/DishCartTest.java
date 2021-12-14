package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import service.DishCartService;

public class DishCartTest {

    public static void main(String[] args) {
        ApplicationContext app=new ClassPathXmlApplicationContext("applicationContext.xml");
        //T getBean()
        //DishCartService dishCartService=(DishCartService) app.getBean("dishCartService");
        //T getBean(Class<T>)
        DishCartService dishCartService=app.getBean(DishCartService.class);
        System.out.println(dishCartService.findDishCartByCustomer(1));
        System.out.println(dishCartService.toStr());
    }
}
