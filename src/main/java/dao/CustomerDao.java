package dao;

import model.Customer;

public interface CustomerDao {
    /**
     * 根据name和password登录
     * @param name
     * @param password
     * @return
     */
    public Customer login(String name, String password);
    /**
     * 注册
     * @param customer
     * @return
     */
    public boolean register(Customer customer);
    /**
     * 根据顾客姓名查找是否存在用户:用于注册用户名验证
     * @param customerName
     * @return
     */
    public Customer findCustomerByName(String customerName);
    /**
     * 根据激活码uuid查询用户对象
     * @param
     * @return
     */
    public  Customer findByCode(String code);
    /**
     * 修改指定顾客账户激活状态
     * @param customer
     */
    public void updateStatus(Customer customer);
}
