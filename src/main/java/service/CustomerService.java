package service;

import model.Customer;

/**
 * @Author：Weiyu
 * @Version:
 * @Since:
 * @date：2021-12-06_周一 14:24
 **/
public interface CustomerService {
    /**
     * 注册
     * @param customer
     * @return
     */
    public boolean register(Customer customer);
    /**
     * 激活注册用户
     * @param code
     * @return
     */
    public boolean active(String code);
    /**
     *根据customer查询顾客是否登录
     * @param customer
     * @return
     */
    public Customer login(Customer customer);
}
